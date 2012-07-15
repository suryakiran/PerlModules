package Emacs;
use base qw 'Class::Accessor::Fast';

__PACKAGE__->mk_ro_accessors(qw{
    exe rc rc_local server_list
});

my %moduleMap = (
  'MSWin32' => 'Win32'
);

my $module = $moduleMap{$^O} || 'Linux';

require ("${module}/Emacs.pm");
our @ISA = ("${module}::Emacs");

sub new {
  my ($class, %params) = @_;

  my $self = bless {
    exe         => '',
    client_exe => '',
  }, $class;
  
  $self->{client_exe} = $self->emacsClientExe();
  $self->{exe} = $self->emacsExe();
  
  return $self;
}
