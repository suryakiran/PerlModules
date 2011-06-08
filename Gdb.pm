package Gdb;

use File::Which qw/which/;
use Carp;

use constant false => 0;
use constant true => 1;

sub new {
  my ($class, %parameters) = @_;

  my $cgdb = _locate_cgdb();
  my $gdb  = _locate_gdb();

  carp ("Gdb is not found") if not defined $gdb;

  my $exe_file = delete $parameters{exe_file};
  my $init_file = delete $parameters{init_file};

  my $self = bless {
    init_file => $init_file,
    exe_file  => $exe_file,
    debugger  => $cgdb // $gdb // undef,
    is_cgdb   => $cgdb // false,
  }, $class;

  return $self;
}

sub launch {
  my ($self, %exe_args) = @_;

  if ($self->{debugger}) {
    $self->_debug_app(%exe_args) ;
  } else {
    $self->_run_app(%exe_args) ;
  }
}

sub _debug_app {
  my ($self, %appArgs) = @_;

  my @args;

  push @args, sprintf ("%s %s", $self->{debugger}, $self->{exe_file});
  if ($self->{is_cgdb}) {
    push @args, "--";
  }

  push @args, sprintf ("-x %s", $self->{init_file}) if -e $self->{init_file};

  if (%appArgs) {
    my $appArgsString = "--args $self->{exe_file}";
    foreach (keys %appArgs) {
      $appArgsString = sprintf ("%s --%s=\"%s\"", $appArgsString, $_, $appArgs{$_}); 
    }
    push @args, $appArgsString ;
  }

  #print join(" ", @args);

  exec join(' ', @args);
}

sub _run_app {
  my ($self) = @_;
  my @args;
  push @args, $self->{exe_file};
  exec @args;
}

sub _locate_gdb {
  return which('gdb') // undef;
}

sub _locate_cgdb {
  return which('cgdb') // undef;
}

1;

__END__
