package GVim;

my %moduleMap = (
  'MSWin32' => 'Win32'
);

my $module = $moduleMap{$OSNAME} || 'Linux';


require ("GVim/${module}.pm");
our @ISA = ("GVim::${module}");
