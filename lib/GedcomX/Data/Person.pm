package GedcomX::Data::Person;
use Moo;

with 'GedcomX::Data::Role::Subject';

has names =>  (
  # # list of name objects
  is => 'lazy',
);

has gender  => ( is => 'lazy' );
has facts   => ( is => 'lazy' );
has private => ( is => 'lazy' );

1;
