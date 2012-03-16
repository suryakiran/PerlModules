package LocalPackages;
use Carp;

use constant false => 0;
use constant true => 1;

my %moduleMap = (
  'MSWin32' => 'Win32'
);

my $module = $moduleMap{$^O} || 'Linux';

require ("LocalPackages/${module}.pm");
our @ISA = ("LocalPackages::${module}");

sub new {
  my ($class, %params) = @_;

  my $self = bless {}, $class;
  return $self;
}
