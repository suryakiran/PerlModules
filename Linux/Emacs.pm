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

sub runningServers {
    my @servers;
    my $serversDir = catfile($ENV{HOME}, '.emacs.d', 'server');
    @servers = <$serversDir/*>;
    return @servers;
}

1;
