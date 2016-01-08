package GedcomX::Data::Role::Conclusion;
use Moo::Role;

has identifier => ( is => 'ro', default => 'http://gedcomx.org/v1/Conclusion' );
     ## TODO: so each type has their own identifier, need to look up how each user of this role
     #has to provide this
has id         => ( is => 'lazy' );
has lang       => ( is => 'lazy' );
has sources    => ( is => 'lazy' );
has analysis   => ( is => 'lazy' );
has notes      => ( is => 'lazy' );
has confidence => ( is => 'lazy' );

1;
