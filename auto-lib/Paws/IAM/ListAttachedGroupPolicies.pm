
package Paws::IAM::ListAttachedGroupPolicies;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttachedGroupPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListAttachedGroupPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAttachedGroupPoliciesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListAttachedGroupPolicies - Arguments for method ListAttachedGroupPolicies on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedGroupPolicies on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method ListAttachedGroupPolicies.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedGroupPolicies.

As an example:

  $service_obj->ListAttachedGroupPolicies(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> GroupName => Str

  

The name (friendly name, not ARN) of the group to list attached
policies for.










=head2 Marker => Str

  

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response you received to
inform the next call about where to start.










=head2 MaxItems => Int

  

Use this only when paginating results to indicate the maximum number of
items you want in the response. If there are additional items beyond
the maximum you specify, the C<IsTruncated> response element is
C<true>.

This parameter is optional. If you do not include it, it defaults to
100. Note that IAM might return fewer results, even when there are more
results available. If this is the case, the C<IsTruncated> response
element returns C<true> and C<Marker> contains a value to include in
the subsequent call that tells the service where to continue from.










=head2 PathPrefix => Str

  

The path prefix for filtering the results. This parameter is optional.
If it is not included, it defaults to a slash (/), listing all
policies.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedGroupPolicies in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

