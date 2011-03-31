#!/usr/bin/env perl
use warnings;
use strict;
use Win32::Registry;
use Win32::TieRegistry;
use Win32::Process;
use Win32;
use Getopt::Long qw(:config no_ignore_case);

my %options =();
my $files;
my $vimOptions;
my $server='default';
my $lineNum=1;
my $columnNum=1;
my $readLocalSource;

my $opts;

my $result = GetOptions (
	'file|f=s@' => \$files,
	'vimoptions|v=s@' => \$vimOptions,
	'server|s=s' => \$server,
	'line|l=i' => \$lineNum,
	'col|c=i' => \$columnNum
);
	        
my $reg = $Registry->Open ("LMachine/SOFTWARE/Vim/Gvim", {Access => KEY_READ(), Delimiter => '/'})
	or die "Can't open HKEY_LOCAL_MACHINE key: $^E\n";

sub ErrorReport {
	print Win32::FormatMessage (Win32::GetLastError());
}

my $vimargs;
push (@$vimargs, 'gvim');
push (@$vimargs, '--servername');
push (@$vimargs, $server);


if ($files) {
	push (@$vimargs, '--remote-tab-silent');
	push (@$vimargs, '+' . $lineNum);
	foreach (@$files) {
		push (@$vimargs, "\"$_\"");
	}
}

my $vimargs_string = join (' ', @$vimargs);

my $ProcessObj;

Win32::Process::Create ($ProcessObj, $reg->{'/path'}, $vimargs_string, 0,
	NORMAL_PRIORITY_CLASS, ".") || die ErrorReport();

$ProcessObj->Resume();
