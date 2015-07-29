package GedcomX::Data::NamePart;
use Moo;

has type       => ( is => 'lazy' );
has qualifiers => ( is => 'lazy' );
has value      => ( is => 'lazy' );

1;
