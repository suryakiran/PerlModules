#!/usr/bin/env perl

use File::Basename;
use File::Spec::Functions;

use constant IS_LINUX => ($^O =~ /linux/);
use constant false => 0;
use constant true => 1;

BEGIN {
  unshift @INC, catfile(dirname(__FILE__), 'PerlModules');
}

use warnings;
use strict;

use Env ;
use English;
use GVim;
use Getopt::Long qw(:config no_ignore_case);

my $files;
my $vimOptions;
my $server;
my $lineNum=1;
my $columnNum=1;
my $readLocalSource;
my $editPerlFile;
my $editVimrcFile;
my $vcSolutionName;
my $package = $ENV{'CURRENT_PACKAGE_NAME'};

my %serverMap =  (
  'GeneroStudio' => 'gst',
);

my $opts;

my $result = GetOptions (
	'file|f=s@' => \$files,
	'server|s=s' => \$server,
	'line|l=i' => \$lineNum,
	'col|c=i' => \$columnNum,
  'perl|p' => \$editPerlFile,
  'vimrc|v' => \$editVimrcFile,
);

my $vimargs;
my $gvimExe = GVim->gvimExe();

push (@$vimargs, $gvimExe);

my @gvimServersRunning = GVim->serverList();

push (@$vimargs, '--servername');

if ($server) {
  $server =~ s/\.(sln|vcproj)$//;
  if (exists($serverMap{$server})) {
    $server = $serverMap{$server};
  }
} elsif ($package) {
  $server = $package;
} else {
  $server = 'gvim';
}

#
# To open gvimrc/gvimrc-local/gvim.pl/bashrc files the server is always gvim to
# avoid confusion
#

if ($editPerlFile) {
  $server = 'gvim';
  @$files = ();
  push (@$files, __FILE__);
} elsif ($editVimrcFile) {
  $server = 'gvim';
  @$files = ();
  push (@$files, GVim->gvimrcFile());
}

$server =~ tr/a-z/A-Z/;
my $serverIsRunning = false;

if ($server ~~ @gvimServersRunning) {
  $serverIsRunning = true;
}

push (@$vimargs, $server);

if ($files) {
	push (@$vimargs, '--remote-tab-silent');
	push (@$vimargs, '+' . $lineNum);
	foreach (@$files) {
    if ($_ =~ /\s/) {
      push (@$vimargs, "\"$_\"");
    } else {
      push (@$vimargs, "$_");
    }
	}
} elsif (@ARGV) {
  push (@$vimargs, '--remote-tab-silent');
  foreach (@ARGV) {
    if ($_ =~ /\s/) {
      push (@$vimargs, "\"$_\"");
    } else {
      push (@$vimargs, "$_");
    }
  }
} elsif ($serverIsRunning){
  push (@$vimargs, '--remote-send');
  push (@$vimargs, "'<Esc><CR>'");
}

if (IS_LINUX) {
  push (@$vimargs, "2>" . File::Spec->devnull());
}

my $vimargs_string = join (' ', @$vimargs);

#print $vimargs_string . "\n";
GVim->launch(@$vimargs);
