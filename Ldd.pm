package Ldd;

use File::Which qw/which/;
use Carp;

use constant false => 0;
use constant true => 1;

sub new {
  my ($class, %parameters) = @_;

  my $ldd = _locate_ldd();

  carp ("Ldd is not found") if not defined $ldd;

  my $exe_file = delete $parameters{exe_file};

  my $self = bless {
    exe_file  => $exe_file,
    ldd => $ldd,
  }, $class;

  return $self;
}

sub launch {
  my ($self) = @_;
  my @args;
  push @args, $self->{ldd};
  push @args, $self->{exe_file};
  exec @args;
}

sub _locate_ldd {
  return which('ldd') // undef;
}

1;

__END__
