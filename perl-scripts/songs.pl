#!/usr/bin/env perl

use warnings;
use strict;
use File::Spec;
use File::HomeDir;
use WWW::Mechanize;

use constant false => 0;
use constant true => 1;

my $home=File::HomeDir->my_home;

my $mech = WWW::Mechanize->new (autocheck=>1);
my (@singers, $details);

my $masterSite = 'http://www.muskurahat.com/music/artist/';

push @singers, 'lata-mangeshkar';

foreach (@singers) {
  $details->{$_}->{'dir'} = File::Spec->catfile($home, 'songs', $_);
  $details->{$_}->{'site'} = $masterSite . $_ . '.asp';
}

foreach my $singer (@singers) {
  $mech->get($details->{$singer}->{'site'});
  my @links = $mech->find_all_links(url_regex => qr/album=/);

  my $i = 0;
  foreach my $link (@links) {
    $details->{$singer}->{'childsites'}->[$i] = $masterSite . $link->url();
    $i++;
  }
}

foreach my $singer (@singers) {
  my $childSites = $details->{$singer}->{'childsites'};
  foreach (@$childSites) {
    print $_ . "\n";
  }
}
