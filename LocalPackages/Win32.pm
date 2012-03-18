package LocalPackages::Win32;
use strict ;
use warnings;
use Env qw/@INCLUDE @LIB @LIBPATH @PATH/;
use Win32;
use File::Basename;
use File::Spec::Functions;

my $packagesDir;
my $packages;
my $boostVersion;
my $pocoVersion;

BEGIN {
  $packagesDir = "$ENV{PACKAGES_DIR}";
  $boostVersion = '1.49.0';
  $pocoVersion   = '1.4.3';
  my $qtVersion = '4.8.0';
  my $xercesVersion = '3.1.1';

  $packages = {
    zlibDir   => 'zlib-1.2.5',
    libxmlDir => 'libxml2-2.7.8.win32',
    iconvDir  => 'iconv-1.9.2.win32',
    qt        => catfile('Qt', "$qtVersion"),
    xerces    => "Xerces-$xercesVersion",
    icu       => 'icu',
    poco      => "Poco-$pocoVersion",
    expat     => 'Expat 2.0.1',
    png       => 'libpng-1.5.9',
    osg       => 'OpenSceneGraph-3.0.1',
    doxygen   => 'doxygen',
    graphviz  => 'Graphviz 2.28',
    glut      => 'Glut'
  };

}

sub _EnvFromPackageDirs {
  foreach (keys $packages) {
    my $dir = catfile ($packagesDir, $packages->{$_});
    unshift @INCLUDE, catfile ($dir, 'include');
    unshift @LIB, catfile ($dir, 'lib');
    unshift @LIBPATH, catfile ($dir, 'lib');
    my $sp = Win32::GetShortPathName(catfile($dir, 'bin'));
    if ($sp) {
      unshift @PATH, $sp;
    }
  }
}

sub setEnv {
  $ENV{ZORBA_THIRD_PARTY_REQUIREMENTS} = $packagesDir;
  _EnvFromPackageDirs();
  my $boostDir = catfile($packagesDir, "Boost-$boostVersion");
  $ENV{BOOST_ROOT} = $boostDir;
  $ENV{POCO_ROOT} = catfile($packagesDir, "Poco-$pocoVersion");

  unshift @INCLUDE, catfile($boostDir, 'include', 'boost-1_49');
  unshift @PATH, catfile($boostDir, 'lib');
  unshift @LIB, catfile($boostDir, 'lib');
  unshift @LIBPATH, catfile($boostDir, 'lib');
}
