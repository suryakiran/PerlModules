package GVim;
use base qw 'Class::Accessor::Fast';

__PACKAGE__->mk_ro_accessors(qw{
    exe rc rc_local server_list
});

my %moduleMap = (
  'MSWin32' => 'Win32'
);

my $module = $moduleMap{$^O} || 'Linux';

require ("GVim/${module}.pm");
our @ISA = ("GVim::${module}");

sub new {
  my ($class, %params) = @_;

  my $self = bless {
    exe         => '',
    rc          => '',
    rc_local    => '',
    server_list => []
  }, $class;

  $self->{exe} = $self->gvimExe();
  $self->{rc} = $self->gvimrcFile();
  $self->{rc_local} = $self->gvimrcLocalFile();
  $self->{server_list} = $self->serverList();

  return $self;
}
