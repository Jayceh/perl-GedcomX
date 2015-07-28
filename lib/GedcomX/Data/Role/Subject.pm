package GedcomX::Data::Role::Subject;
use Moo::Role;

has extracted   => ( is => 'lazy' );
has evidence    => ( is => 'lazy' );
has media       => ( is => 'lazy' );
has identifiers => ( is => 'lazy' );
has attribution => ( is => 'lazy' );

1;
