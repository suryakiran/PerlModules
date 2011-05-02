#!/usr/bin/env perl
use warnings;
use strict;
use Win32::Registry;
use Win32::TieRegistry;
use Win32::Process;
use Win32;
use File::Spec;
use File::Basename;
use Getopt::Long qw(:config no_ignore_case);

my $files;
my $vimOptions;
my $server='default';
my $lineNum=1;
my $columnNum=1;
my $readLocalSource;
my $editPerlFile;
my $editVimrcFile;
my $vcSolutionName;

my %solutionServerMap =  (
  'GeneroStudio' => 'gst',
);

my $opts;

my $result = GetOptions (
	'file|f=s@' => \$files,
	'vimoptions|v=s@' => \$vimOptions,
	'server|s=s' => \$server,
	'line|l=i' => \$lineNum,
	'col|c=i' => \$columnNum,
  'perl|p' => \$editPerlFile,
  'vimrc|v' => \$editVimrcFile,
  'vcproj=s' => \$vcSolutionName
);

my $reg = $Registry->Open ("LMachine/SOFTWARE/Vim/Gvim", {Access => KEY_READ(), Delimiter => '/'})
	or die "Can't open HKEY_LOCAL_MACHINE key: $^E\n";

my $gvim_exe = $reg->{'/path'};
my $vim_dir = dirname(dirname($gvim_exe));
my $gvimrc_file = File::Spec->catfile("$vim_dir", "_gvimrc");

sub ErrorReport {
	print Win32::FormatMessage (Win32::GetLastError());
}

my $vimargs;
push (@$vimargs, 'gvim');
push (@$vimargs, '--servername');

if ($vcSolutionName) {
  $vcSolutionName =~ s/\.(sln|vcproj)$//;
  if (exists($solutionServerMap{$vcSolutionName})) {
    $server = $solutionServerMap{$vcSolutionName};
  }
}

push (@$vimargs, $server);

if ($editPerlFile) {
  @$files = ();
  push (@$files, __FILE__);
} elsif ($editVimrcFile) {
  @$files = ();
  push (@$files, $gvimrc_file);
}

if ($files) {
	push (@$vimargs, '--remote-tab-silent');
	push (@$vimargs, '+' . $lineNum);
	foreach (@$files) {
		push (@$vimargs, "\"$_\"");
	}
} elsif (@ARGV) {
  push (@$vimargs, '--remote-tab-silent');
  foreach (@ARGV) {
		push (@$vimargs, "\"$_\"");
  }
}

my $vimargs_string = join (' ', @$vimargs);

my $processObj;

Win32::Process::Create ($processObj, $reg->{'/path'}, $vimargs_string, 0,
	NORMAL_PRIORITY_CLASS, ".") || die ErrorReport();

$processObj->Resume();
