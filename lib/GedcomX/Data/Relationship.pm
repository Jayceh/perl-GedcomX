package GedcomX::Data::Relationship;
use Moo;

with 'GedcomX::Data::Role::Subject';

has type =>  (
  # # list of name objects
  is => 'lazy',
);

has person1 => ( is => 'lazy' );
has person2 => ( is => 'lazy' );
has facts   => ( is => 'lazy' );

1;
