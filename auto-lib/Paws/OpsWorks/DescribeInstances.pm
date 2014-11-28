
package Paws::OpsWorks::DescribeInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has LayerId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;