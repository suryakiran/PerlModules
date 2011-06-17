package PkgConfig::Path;

use Env qw/@PKG_CONFIG_PATH/;
use File::Spec::Functions;

@EXPORT = qw/get/;

sub get {
  if ($^O eq 'MSWin32') { return &_win32_path; }
  else                  { return &_unix_path; }
}

sub _win32_path {
  my @path = grep {defined} @PKG_CONFIG_PATH;
  return @path;
}

sub _unix_path {
  my @path = grep {defined} @PKG_CONFIG_PATH;

  push @path, '/usr/lib/pkgconfig';

  if (`uname -a` =~ /Ubuntu/) {
    my $multiarch = `dpkg-architecture -qDEB_BUILD_MULTIARCH`;
    chomp ($multiarch);
    push @path, catfile('/usr/lib', $multiarch, 'pkgconfig');
  }

  push @path, '/usr/local/lib/pkgconfig';
  push @path, '/usr/share/pkgconfig';

  return @path;
}

1;
