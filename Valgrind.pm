package Valgrind;

use File::Which qw/which/;
use Carp;

use constant false => 0;
use constant true => 1;

sub new {
  my ($class, %parameters) = @_;

  my $valg = _locate_valg();
  my $gnome_gui = _locate_alleyoop();
  my $kde_gui = _locate_valkyrie();

  carp ("Valgrind is not found") if not defined $valg;

  my $exe_file = delete $parameters{exe_file};

  my $self = bless {
    exe_file  => $exe_file,
    valg => $valg,
  }, $class;

  return $self;
}

sub launch {
  my ($self) = @_;
  my @args;
  push @args, $self->{valg};
  push @args, $self->{exe_file};
  exec @args;
}

sub _locate_valkyrie {
  return which ('valkyrie') // undef;
}

sub _locate_alleyoop {
  return which ('alleyoop') // undef;
}

sub _locate_valg {
  return which('valgrind') // undef;
}

1;

__END__
