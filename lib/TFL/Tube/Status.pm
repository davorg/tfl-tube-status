package TFL::Tube::Status;

use Moose;
use LWP::UserAgent;

my $url = 'http://api.tubeupdates.com/?method=';

has 'ua'     => ( is => 'rw', isa => 'LWP::UserAgent' );
has 'format' => ( is => 'rw', isa => 'Str' );

sub BUILD {
  my $self = shift;

  $self->{ua}       = LWP::UserAgent->new;
  $self->{format} ||= 'xml';
}

sub get_status {
  my $self = shift;

  my $method = 'get.status';

  my @lines = @_ ? @_ : qw(all);

  my $response = $self->{ua}->get(
    "$url$method&lines=" . join(',', @lines) . "&format=$self->{format}",
  );

  return $response->content;
}

1;
