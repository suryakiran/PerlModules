#!/usr/bin/env perl

use strict;
use warnings;
use Text::Tabs;
use File::Find;
use Getopt::Long qw(:config no_ignore_case);

my $gc_exe;

sub find_gc_executable {
  if ($gc_exe) {
    return;
  }

  if (/GC$/) {
    $gc_exe = $File::Find::name;
  }
}

find (\&find_gc_executable, $ENV{'GSTDIR'});

die "Cannot find GC executable" unless defined $gc_exe;

my $files;

my $result = GetOptions (
  'file|f=s@' => \$files
);

foreach (@$files) {
  print "Processing " . $_ . " ... ";
  my $gc_args = '-file-"' . $_ . '"';
  my $fileName = $_;
  my $bakFileName = $_ . '.bak' ;
  my $tmpFileName = $_ . ".tmp";

  `$gc_exe $gc_args 2>&1`;
  if ($? != 0) {
    print "GC Command failed for " . $_ . "\n";
  }

  sleep 1;
  open FILE, '<', $fileName or die "Cannot open file $!";
  open FILESAVE, ">" . $tmpFileName;
  while (<FILE>) {
    s/^\s*(public|private|protected)\s*slots\s*:\s*/\n$1 slots:\n    /;
    my $line = expand ($_);
    print FILESAVE $line;
  }
  close (FILE);
  rename ($tmpFileName, $fileName) or print "Cannot rename tmp file $tmpFileName";
  unlink ($bakFileName);
  print "Done\n";
}
