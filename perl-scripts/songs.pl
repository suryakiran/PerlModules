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

foreach (@singers) {
  $mech->get($details->{$_}->{'site'});
  #my @links = $mech->find_all_links(url_regex => /details\.asp/);
  #print @links . "\n";
  my @links = $mech->find_all_links(url_regex => qr/album=/);
  foreach my $link (@links) {
    push $details->{$_}->['childsites'], $masterSite . $link->url();
  }
}

foreach my $singer (@singers) {
  foreach ($details->{$singer}->['childsites']) {
    print $_ . "\n";
  }
}
