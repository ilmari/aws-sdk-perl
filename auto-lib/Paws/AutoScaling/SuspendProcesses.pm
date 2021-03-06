
package Paws::AutoScaling::SuspendProcesses;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SuspendProcesses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::SuspendProcesses - Arguments for method SuspendProcesses on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method SuspendProcesses on the 
Auto Scaling service. Use the attributes of this class
as arguments to method SuspendProcesses.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to SuspendProcesses.

As an example:

  $service_obj->SuspendProcesses(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> AutoScalingGroupName => Str

  

The name or Amazon Resource Name (ARN) of the Auto Scaling group.










=head2 ScalingProcesses => ArrayRef[Str]

  

One or more of the following processes:

=over

=item *

C<Launch>

=item *

C<Terminate>

=item *

C<HealthCheck>

=item *

C<ReplaceUnhealthy>

=item *

C<AZRebalance>

=item *

C<AlarmNotification>

=item *

C<ScheduledActions>

=item *

C<AddToLoadBalancer>

=back












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SuspendProcesses in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

