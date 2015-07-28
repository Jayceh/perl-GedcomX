package GedcomX::Data::SourceDescription;
use Moo;

# SYNOPSIS: https://github.com/FamilySearch/gedcomx/blob/master/specifications/conceptual-model-specification.md#23-the-sourcedescription-data-type

has id  => ( is => 'lazy' );
has resource_type   => ( is => 'lazy' 
  # optional enum of types: https://github.com/FamilySearch/gedcomx/blob/master/specifications/conceptual-model-specification.md#known-resource-types
); 
has citation => ( is => 'lazy' 
  # required, https://github.com/FamilySearch/gedcomx/blob/master/specifications/conceptual-model-specification.md#source-citation
);

has media_type   => ( is => 'lazy' );
has about        => ( is => 'lazy' ); # URI
has mediator     => ( is => 'lazy' ); # URI
has sources      => ( is => 'lazy' ); # list of https://github.com/FamilySearch/gedcomx/blob/master/specifications/conceptual-model-specification.md#source-reference
has analysis     => ( is => 'lazy' );
has component_of => ( is => 'lazy' );
has titles       => ( is => 'lazy' );
has notes        => ( is => 'lazy' );
has attribution  => ( is => 'lazy' );
has rights       => ( is => 'lazy' );
has coverage     => ( is => 'lazy' );
has descriptions => ( is => 'lazy' );
has identifiers  => ( is => 'lazy' );
has created      => ( is => 'lazy' );
has modified     => ( is => 'lazy' );
has repository   => ( is => 'lazy' );

1;
