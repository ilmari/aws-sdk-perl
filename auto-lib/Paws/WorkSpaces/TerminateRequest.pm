package Paws::WorkSpaces::TerminateRequest;
  use Moose;
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);
1;
