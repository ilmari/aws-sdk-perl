package Paws::RedShift::Endpoint;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
1;
