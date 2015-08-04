package GedcomX::Data::Places;
use Moo;

# PlaceDescription ?

has names               => ( is => 'lazy' );
has latitude            => ( is => 'lazy' );
has longitude           => ( is => 'lazy' );
has type                => ( is => 'lazy' );
has place               => ( is => 'lazy' );
has jurisdiction        => ( is => 'lazy' );
has temporalDescription => ( is => 'lazy' );
has spatialDescription  => ( is => 'lazy' );

1;
