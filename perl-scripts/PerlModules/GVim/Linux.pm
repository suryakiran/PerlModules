package GVim::Linux;

use strict;
use warnings;

use File::Spec::Functions;
use File::Which qw(which where);

sub gvimExe() {
  return which("gvim");
}

sub gvimrcFile() {
  catfile($ENV{'HOME'}, '.gvimrc');
}

sub gvimrcLocalFile() {
  catfile($ENV{'HOME'}, '.gvimrc-local');
}

sub launch() {
  shift;
  my $str = join(' ', @_);
  system($str);
}

1;
