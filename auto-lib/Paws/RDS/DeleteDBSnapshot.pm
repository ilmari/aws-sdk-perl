
package Paws::RDS::DeleteDBSnapshot;
  use Moose;
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBSnapshot - Arguments for method DeleteDBSnapshot on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBSnapshot on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method DeleteDBSnapshot.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBSnapshot.

As an example:

  $service_obj->DeleteDBSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DBSnapshotIdentifier => Str

  

The DBSnapshot identifier.

Constraints: Must be the name of an existing DB snapshot in the
C<available> state.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

