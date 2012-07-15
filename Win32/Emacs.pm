package Win32::Emacs;

use strict;
use warnings;

use File::Spec::Functions;
use File::Basename;
use Carp;
use Win32::Registry;
use Win32::TieRegistry;
use Win32::Process;
use Win32;
use Env qw/@PATH/;

my $emacsDir;
my $emacsBinDir;
my $emacsExe;
my $emacsClientExe;

BEGIN {
  my $reg = $Registry->Open ('LMachine/SOFTWARE/Emacs',
    {
      Access => KEY_READ(), 
      Delimiter => '/'
    }
  )
    or croak "Can't open HKEY_LOCAL_MACHINE key: $^E\n";

  $emacsDir = $reg->{'/install-dir'};
  $emacsBinDir = catdir ($emacsDir, 'bin');
  $emacsExe = catfile ($emacsBinDir, 'runemacs.exe');
  $emacsClientExe = catfile($emacsBinDir, 'emacsclient.exe');
}

sub emacsExe {
  return $emacsExe;
}

sub emacsClientExe {
    return $emacsClientExe;
}

sub ErrorReport {
  print Win32::FormatMessage (Win32::GetLastError());
}

sub launch {
  my ($self, $emacs_args_string) = @_;
  my $processObj;


  Win32::Process::Create ($processObj, $self->emacsClientExe(), $emacs_args_string, 0,
    NORMAL_PRIORITY_CLASS, ".") || croak ErrorReport();

  $processObj->Resume();
}

1;
