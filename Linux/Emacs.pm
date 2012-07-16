package Linux::Emacs;

use strict;
use warnings;

use File::Spec::Functions;
use File::Which qw(which where);

sub emacsExe {
  return which("emacs");
}

sub emacsClientExe {
    return which("emacsclient");
}

sub launch {
  shift;
  my $str = join(' ', @_);
  system($str);
}

1;
