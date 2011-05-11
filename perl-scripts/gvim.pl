#!/usr/bin/env perl

use File::Basename;
use File::Spec::Functions;

use constant IS_LINUX => ($^O =~ /linux/);

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
my $server='gvim';
my $lineNum=1;
my $columnNum=1;
my $readLocalSource;
my $editPerlFile;
my $editVimrcFile;
my $vcSolutionName;

my %serverMap =  (
  'GeneroStudio' => 'gst',
);

my $opts;

my $result = GetOptions (
	'file|f=s@' => \$files,
	'vimoptions|vo=s@' => \$vimOptions,
	'server|s=s' => \$server,
	'line|l=i' => \$lineNum,
	'col|c=i' => \$columnNum,
  'perl|p' => \$editPerlFile,
  'vimrc|v' => \$editVimrcFile,
);

my $vimargs;
push (@$vimargs, GVim->gvimExe());

foreach my $vo (@$vimOptions) {
  push (@$vimargs, $vo)
}

push (@$vimargs, '--servername');

if ($server) {
  $server =~ s/\.(sln|vcproj)$//;
  if (exists($serverMap{$server})) {
    $server = $serverMap{$server};
  }
}

push (@$vimargs, $server);

if ($editPerlFile) {
  @$files = ();
  push (@$files, __FILE__);
} elsif ($editVimrcFile) {
  @$files = ();
  push (@$files, GVim->gvimrcFile());
}

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
}

if (IS_LINUX) {
  push (@$vimargs, "2>" . File::Spec->devnull());
}

my $vimargs_string = join (' ', @$vimargs);

GVim->launch(@$vimargs);
