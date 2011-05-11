package GVim::Win32;

use strict;
use warnings;

use File::Spec::Functions;
use Carp;
use Win32::Registry;
use Win32::TieRegistry;
use Win32::Process;
use Win32;

$GVim::Win32::vimrcFile ;
$GVim::Win32::vimDir ;
$GVim::Win32::vimExe ;

BEGIN {
  my $reg = $Registry->Open ("LMachine/SOFTWARE/Vim/Gvim", {Access => KEY_READ(), Delimiter => '/'})
    or croak "Can't open HKEY_LOCAL_MACHINE key: $^E\n";

  $GVim::Win32::vimExe = $reg->{'/path'};
  $GVim::Win32::vimDir = dirname(dirname($gvim_exe));
  $GVim::Win32::vimrcFile = File::Spec->catfile($GVim32::Win32::vimDir, "_gvimrc");
}

sub gvimExe() {
  return $GVim::Win32::vimExe;
}

sub gvimrcFile() {
  return $GVim::Win32::vimrcFile;
}

sub gvimrcLocalFile() {
  return catfile($GVim::Win32::vimDir, 'gvimrc-local');
}

sub ErrorReport {
  print Win32::FormatMessage (Win32::GetLastError());
}

sub launch() {
  my $processObj;

  Win32::Process::Create ($processObj, $reg->{'/path'}, $vimargs_string, 0,
    NORMAL_PRIORITY_CLASS, ".") || croak ErrorReport();

  $processObj->Resume();
}

1;
