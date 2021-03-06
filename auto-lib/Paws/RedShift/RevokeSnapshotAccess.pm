
package Paws::RedShift::RevokeSnapshotAccess;
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RevokeSnapshotAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RevokeSnapshotAccess - Arguments for method RevokeSnapshotAccess on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSnapshotAccess on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method RevokeSnapshotAccess.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSnapshotAccess.

As an example:

  $service_obj->RevokeSnapshotAccess(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> AccountWithRestoreAccess => Str

  

The identifier of the AWS customer account that can no longer restore
the specified snapshot.










=head2 SnapshotClusterIdentifier => Str

  

The identifier of the cluster the snapshot was created from. This
parameter is required if your IAM user has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.










=head2 B<REQUIRED> SnapshotIdentifier => Str

  

The identifier of the snapshot that the account can no longer access.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSnapshotAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

