package Paws::RedShift::EventSubscription;
  use Moose;
  has CustomerAwsId => (is => 'ro', isa => 'Str');
  has CustSubscriptionId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategoriesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIdsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubscriptionCreationTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
1;
