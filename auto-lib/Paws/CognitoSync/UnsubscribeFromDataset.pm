
package Paws::CognitoSync::UnsubscribeFromDataset;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DatasetName' , required => 1);
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceId' , required => 1);
  has IdentityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityId' , required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnsubscribeFromDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::UnsubscribeFromDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UnsubscribeFromDatasetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UnsubscribeFromDataset - Arguments for method UnsubscribeFromDataset on Paws::CognitoSync

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnsubscribeFromDataset on the 
Amazon Cognito Sync service. Use the attributes of this class
as arguments to method UnsubscribeFromDataset.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UnsubscribeFromDataset.

As an example:

  $service_obj->UnsubscribeFromDataset(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DatasetName => Str

  

The name of the dataset from which to unsubcribe.










=head2 B<REQUIRED> DeviceId => Str

  

The unique ID generated for this device by Cognito.










=head2 B<REQUIRED> IdentityId => Str

  

Unique ID for this identity.










=head2 B<REQUIRED> IdentityPoolId => Str

  

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. The ID of the pool to which this identity belongs.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnsubscribeFromDataset in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

