
package Paws::S3::GetObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');
  has IfModifiedSince => (is => 'ro', isa => 'Str');
  has IfNoneMatch => (is => 'ro', isa => 'Str');
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Range => (is => 'ro', isa => 'Str');
  has ResponseCacheControl => (is => 'ro', isa => 'Str');
  has ResponseContentDisposition => (is => 'ro', isa => 'Str');
  has ResponseContentEncoding => (is => 'ro', isa => 'Str');
  has ResponseContentLanguage => (is => 'ro', isa => 'Str');
  has ResponseContentType => (is => 'ro', isa => 'Str');
  has ResponseExpires => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectResult');
}
1;