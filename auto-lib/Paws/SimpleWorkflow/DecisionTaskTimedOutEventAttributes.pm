package Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes;
  use Moose;
  has scheduledEventId => (is => 'ro', isa => 'Int', required => 1);
  has startedEventId => (is => 'ro', isa => 'Int', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
1;
