use DateTime;
#use DateTime::Event::Sunrise;
use DateTime::Astro::Sunrise;
$latitude = "+43.154424"; $longitude = "-79.472518"; 
$sr = DateTime::Astro::Sunrise->new($longitude, $latitude, 0, 3);
#$sr = DateTime::Event::Sunrise->new($longitude, $latitude, 0, 3);
$date = DateTime->now; $date->set_time_zone("local");
($rise, $set) = $sr->sunrise($date);
$rise->set_time_zone("local"); $set->set_time_zone("local");
print $rise, "\n";
