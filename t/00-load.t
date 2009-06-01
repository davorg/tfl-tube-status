
use Test::More qw(no_plan);

BEGIN {
  use_ok('TFL::Tube::Status');
}

ok(my $tfl = TFL::Tube::Status->new);
isa_ok($tfl, 'TFL::Tube::Status');
can_ok($tfl, 'ua');
isa_ok($tfl->ua, 'LWP::UserAgent');
can_ok($tfl, 'format');
is($tfl->format, 'xml');

diag $tfl->get_status('northern');
$tfl->format('json');
diag $tfl->get_status('northern');
