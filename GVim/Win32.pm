package GVim::Win32;

use strict;
use warnings;

use File::Spec::Functions;
use File::Basename;
use Carp;
use Win32::Registry;
use Win32::TieRegistry;
use Win32::Process;
use Win32;

my $vimrcFile;
my $vimDir;
my $vimExe;

BEGIN {
  my $reg = $Registry->Open ('LMachine/SOFTWARE/Vim/Gvim', 
    {
      Access => KEY_READ(), 
      Delimiter => '/'
    }
  )
    or croak "Can't open HKEY_LOCAL_MACHINE key: $^E\n";

  $vimExe = $reg->{'/path'};
  $vimDir = dirname(dirname($vimExe));
  $vimrcFile = Win32::GetShortPathName(File::Spec->catfile($vimDir, "_gvimrc"));
}

sub gvimExe {
  return $vimExe;
}

sub gvimrcFile {
  return $vimrcFile;
}

sub gvimrcLocalFile {
  return catfile($vimDir, 'gvimrc-local');
}

sub ErrorReport {
  print Win32::FormatMessage (Win32::GetLastError());
}

sub launch {
  my ($self, $vimargs_string) = @_;
  my $processObj;


  Win32::Process::Create ($processObj, $self->gvimExe(), $vimargs_string, 0,
    NORMAL_PRIORITY_CLASS, ".") || croak ErrorReport();

  $processObj->Resume();
}

sub serverList {
  my @servers = ();
  my @gvimTasks = grep(
    /^Window Title:/, 
    `tasklist /v /FO LIST /FI "IMAGENAME eq gvim.exe"`
  );

  foreach (@gvimTasks) {
    if (/- *([0-9A-Za-z_-]*)$/) {
      push @servers, $1;
    }
  }

  return @servers;
}

1;
