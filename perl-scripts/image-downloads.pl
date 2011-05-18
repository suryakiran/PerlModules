#!/usr/bin/env perl

use Time::Local;
use MIME::Lite;
use WWW::Mechanize;
use HTML::Parser;
use HTML::Tree;
use File::Glob ':glob';
use File::Spec::Functions;
use File::Path;
use strict;
use warnings;

use constant false => 0;
use constant true => 1;

my @months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);

my @days=localtime(time);
my $dateStr = sprintf("%02d%02d%02d", ($days[5] % 100),$days[4]+1, $days[3]);
my $mailDate = sprintf("%02d-%s-%d", $days[3], $months[$days[4]], $days[5] + 1900);

my ($kingFeatures, $ucomics, $arcamax, @cartoons);

my $downloadCartoons = true;
my $downloadNg = true;
my $debugScript = true;

my $imageDir = catfile($ENV{'HOME'}, "tmp", "Image-Downloads", "images-".$mailDate);
File::Path::make_path ($imageDir);

#$arcamax->{"heathcliff"}->{"output"} = $imageDir . "/hc" . $dateStr . ".gif";
#$kingFeatures->{"bethalf"}->{"long name"} = "Better_Half";
#$kingFeatures->{"bethalf"}->{"output"} = $imageDir . "/bh" . $dateStr . ".gif";

$arcamax->{"dilbert"}->{"output"} = $imageDir . "/db" . $dateStr . ".gif";

$kingFeatures->{"bbailey"}->{"long name"} = "Beetle_Bailey";
$kingFeatures->{"bbailey"}->{"output"} = $imageDir . "/bb" . $dateStr . ".gif";

$kingFeatures->{"hagar"}->{"output"} = $imageDir . "/hh" . $dateStr . ".gif";
$kingFeatures->{"hagar"}->{"long name"} = "Hagar_The_Horrible";

$ucomics->{"animalcrackers"}->{"output-name"} = "tmani".$dateStr.".gif";
$ucomics->{"animalcrackers"}->{"alt"} = "Animal Crackers";

$ucomics->{"garfield"}->{"output-name"} = "ga".$dateStr.".jpg";
$ucomics->{"garfield"}->{"alt"} = "Garfield";

$ucomics->{"bottomliners"}->{"output-name"} = "tmbot".$dateStr.".gif";
$ucomics->{"bottomliners"}->{"alt"} = "Bottomliners";

$ucomics->{"9to5"}->{"output-name"} = "tmntf".$dateStr.".gif";
$ucomics->{"9to5"}->{"alt"} = "9 to 5";

$ucomics->{"calvinandhobbes"}->{"output-name"} = "ch".$dateStr.".jpg";
$ucomics->{"calvinandhobbes"}->{"alt"} = "Calvin and Hobbes";

my $mech = WWW::Mechanize->new (autocheck=>1);

if ($downloadCartoons) {

	for (keys %$arcamax) {
		my $output = $arcamax->{$_}->{"output"};
		$mech->get("http://www.arcamax.com/" . $_);
		my $image = $mech->find_image (
			alt_regex => qr/Cartoon for/
		);

		if ($image) {
			$mech->get($image->url(), ':content_file' => $output);
      push @cartoons, $output;
		}
	}

	for (keys %$kingFeatures) {
		my $longName = $kingFeatures->{$_}->{"long name"};
		my $output = $kingFeatures->{$_}->{"output"};

		my $url = "http://mst.rbma.com/content/" . $longName,
		my $referer = 
		"http://www.kingfeatures.com/features/comics/" . $_ .  "/aboutMaina.php";

		$mech->get ($url, 'Referer' => $referer, ':content_file' => $output);
    push @cartoons, $output;
	}

  for (keys %$ucomics) {
    my $comic = $_;
    $mech->get("http://www.gocomics.com/".$_);
    my @images = $mech->find_all_images(alt_regex => qr/$ucomics->{$comic}->{"alt"}/);
    LOOP_ALL_IMAGES : {
      foreach my $image (@images) {
        my $url = $image->url();
        if ($url =~ /uclick\.com/) {
          my $output = $ucomics->{$comic}->{"output-name"};
          $mech->get($url, ':content_file' => catfile($imageDir, $output));
          push @cartoons, $output;
          last LOOP_ALL_IMAGES;
        }
      }
    }
  }

	$mech->get("http://www.glasbergen.com");
	my $randyImage = $mech->find_image (
		url_regex  => qr/\/cartoons\/(?!thumb)/
	);

	if ($randyImage) {
    my $output = catfile ($imageDir, "randy" . $dateStr . ".gif");
		$mech->get($randyImage->url(), ':content_file' => $output);
    push @cartoons, $output;
	}
}

if ($downloadNg) {
	$mech->get("http://photography.nationalgeographic.com/photography/photo-of-the-day");
	my $content = $mech->content();

	my $link = $mech->find_link(
		tag => "a", 
		text_regex => qr/Download Wallpaper/
	);

	my $smallImage = $mech->find_image (
		alt_regex => qr/Photo:/
	);

	my ($ngDesc, $ngTitle);
	my $ngImageName = "ng" . $dateStr . ".jpg";
	my $imageFound = false;
	my $wallPaper = false;

	if ($link) {
		$mech->get($link->url(), ':content_file' => "$imageDir/$ngImageName");
		$imageFound = true;
		$wallPaper = true;
	} elsif ($smallImage) {
		$mech->get($smallImage->url(), ':content_file' => "$imageDir/$ngImageName");
		$imageFound = true;
	}

	if ($imageFound) {
		my $tree = HTML::TreeBuilder->new();
		$tree->parse_content($content);
		my @caption = $tree->find_by_attribute("id", "caption");
		foreach (@caption) {
			my @titles = $_->find_by_tag_name('h2');
			my @paras = $_->find_by_tag_name('p');
			if (scalar @titles > 0) {
				$ngTitle = $titles[0]->as_HTML();
			}
			if (scalar @paras > 3) {
				$ngDesc = $paras[3]->as_HTML();
			}
		}

		my $ngImage = bsd_glob("$imageDir/ng*jpg");

		if ($ngImage) {
			my $htmlBody = "<font face='Trebuchet MS' color='#aa0000'>";
			$htmlBody = $htmlBody . $ngTitle ;
			$htmlBody = $htmlBody . "</font>";
			$htmlBody = $htmlBody . "<font face='Trebuchet MS' size='2' color='#0000aa'>";
			$htmlBody = $htmlBody . $ngDesc . "</font>";


			my $ngMsg = MIME::Lite->new (
				From => 'Surya Kiran <suryakiran.gullapalli@gmail.com>',
				Bcc => 'surya.4js@gmail.com, raomvn99@gmail.com, kvsssrikanth@gmail.com, sujay.chaurasia@gmail.com',                      
				Type => 'text/html',                                    
				Data    => $htmlBody,                                   
				Subject => "National Geographic Photo Of The Day for " . $mailDate
			);                                                        
                                                                
			$ngMsg->attach (                                          
				Type => 'image/jpeg',                                   
				Path => $ngImage
			);

			$ngMsg->send('smtp', 'localhost');
		}
	}
}

if (@cartoons) {
	my $msg = MIME::Lite->new (
		From => 'Surya Kiran <suryakiran.gullapalli@gmail.com>',
		Bcc => 'surya.4js@gmail.com',                            
		Type => 'text/html',
		Data => "<h3>Cartoons</h3>",
		Subject => "Cartoons for " . $mailDate
	);

	foreach (@cartoons) {
		$msg->attach(
			Type => 'image/gif',
			Path => $_
		);
	}

	$msg->send('smtp', 'localhost');
}
