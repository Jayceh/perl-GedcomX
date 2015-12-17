package GedcomX::Data::Role::Subject;
use Moo::Role;

# ABSTRACT: The subject role is part of the standard
with 'GedcomX::Data::Role::Conclusion';

has extracted   => ( is => 'lazy' );
has evidence    => ( is => 'lazy' );
has media       => ( is => 'lazy' );
has identifiers => ( is => 'lazy' );
has attribution => ( is => 'lazy' );

1;
