use File::Find;
use File::HomeDir;
use Archive::Tar;
use IO::All;
use warnings;

my $tar_file = File::HomeDir->my_home . "/gst.tgz";
my $tar = Archive::Tar->new;
my @files;

sub cmake_files () {
	if (/CMakeLists.txt$/ | /\.cmake$/) {
		push @files, $File::Find::name;
	}
}

find ({wanted => \&cmake_files}, ".");

$tar->add_files (@files);
unlink $tar_file or warn "Tar file doesn't exist";
$tar->write($tar_file, COMPRESS_GZIP, "gst");
