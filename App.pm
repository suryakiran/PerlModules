package App;

use Carp;

use constant false => 0;
use constant true => 1;

sub new {
  my ($class, %parameters) = @_;

  my $exe_file = delete $parameters{exe_file};

  my $self = bless {
    exe_file  => $exe_file,
  }, $class;

  return $self;
}

sub launch {
  my ($self, %exe_args) = @_;

  push @args, $self->{exe_file};
  while (my ($key, $value) = each %exe_args) {
    push @args, sprintf ("--%s=\"%s\"", $key, $value);
  }

  exec join(' ', @args);
}


1;

__END__
