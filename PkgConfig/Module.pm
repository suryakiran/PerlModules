package PkgConfig::Module;

require PkgConfig::Path;

use File::Spec::Functions;
use Data::Dumper;
use Perl::Version;
use Hash::Util;

@EXPORT = qw/new find/;

use constant {
  false => 0,
  true  => 1
};

use base qw 'Class::Accessor::Fast';
__PACKAGE__->mk_ro_accessors(
  qw {
    name
    tab
    }
);

my $template = Template->new( { INTERPOLATE => 1 } );

my $version_regex = '([^\s]*)\s*([<>!]=?)\s*((?:\d+\.)?(?:\d+\.)?(?:\d+)?)';

my %operator_map = (
  '>=' => 'min_version',
  '>'  => 'min_version',
  '='  => 'exact_version',
  '<=' => 'max_version',
  '<'  => 'max_version'
);

my $module_list = {};

sub new {
  my ( $class, %params ) = @_;

  my $self = bless {
    name          => '',
    min_version   => undef,
    max_version   => undef,
    exact_version => undef,
    parent        => undef,
    depends       => [],
    any_version   => false,
    cflags        => [],
    ldflags       => [],
    private       => false,
    tab           => 0,
  }, $class;

  while ( my ( $key, $value ) = each(%params) ) {
    $self->{$key} = $value;
  }

  if ( $self->{parent} ) {
    $self->{tab} = $self->{parent}->{tab} + 2;
  }

  return $self;
}

sub _locate_pc_file {
  my ($self) = @_;
  my $pc_file = undef;
LOOP_PKG_CONFIG_PATH: {
    foreach ( PkgConfig::Path::get() ) {
      my $file = catfile( $_, $self->{name} . '.pc' );
      $pc_file = $file if -e $file;
      last if defined $pc_file;
    }
  }
  return $pc_file;
}

sub _parse_pc_file {
  my ( $self, $pc_file ) = @_;

  open PCFILE, "<", $pc_file;

  my $output = '';

  my $vars = {};

  while (<PCFILE>) {
    $template->process( \$_, $vars, \$output );
    if ( $output =~ / *([^ =]*) *= *(.*)/ ) {
      $vars->{$1} = $2;
    }

    chomp($output);

    if ( $output =~ /^Version: *([^ ]*)/ ) {
      $vars->{Version} = Perl::Version->new($1);
    }

    elsif ( $output =~ /^Description: *([^ ]*)/ ) {
      $vars->{Description} = $1;
    }

    elsif ( $output =~ /^Cflags: *([^ ]*)/ ) {
      $self->{cflags} = $1;
    }

    elsif ( $output =~ /^Libs: *([^ ]*)/ ) {
      $self->{libs} = $1;
    }

    elsif ( $output =~ /^Name: *([^ ]*)/ ) {
      $vars->{Name} = $1;
    }

    #
    # Requires.private is needed when building against static libraries. 
    # Against shared libraries, the Requires.private component is ignored.
    # TODO The following logic need to be changed if static libraries are
    # concerned.
    #
    elsif ( $output =~ m/^Requires:/ ) {
      my $libs = $';    # Everything after the match.

      my $private = false;

      while ( $libs =~ m/$version_regex/g ) {
        if ( not exists $module_list->{$1} ) {
          my $module = PkgConfig::Module->new(
            parent            => $self,
            name              => $1,
            private           => $private,
            $operator_map{$2} => Perl::Version->new($3)
          );

          $module_list->{$1} = \$module;
          push $self->{depends}, \$module;
        }
      }

      $libs =~ s/$version_regex//g;
      $libs =~ tr/ / /s;
      $libs =~ s/ ,/,/g;
      $libs =~ tr/,/,/s;
      my @modules = split( /[, ]/, $libs );
      foreach (@modules) {
        if ($_) {
          if ( not exists $module_list->{$_} ) {
            my $module = PkgConfig::Module->new(
              parent      => $self,
              name        => $_,
              any_version => true,
              private     => $private,
            );

            $module_list->{$_} = \$module;
            push $self->{depends}, \$module;
          }
        }
      }
    }

    $output = '';
  }

  close(PCFILE);
}

sub find {
  my ($self) = @_;
  my $pc_file = $self->_locate_pc_file();

  if ($pc_file) {
    $self->_parse_pc_file($pc_file);

    my $depends = $self->{depends};
    foreach (@$depends) {
      $$_->find();
    }
  }
}

1;
