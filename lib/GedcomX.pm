package GedcomX;
use Moo;

#---- GedcomX Types
use GedcomX::Data::Person;

# ABSTRACT: Implement Data models, and tools for working with GedcomX documents

# SYNOPSIS: Follow specs at https://github.com/FamilySearch/gedcomx/tree/master/specifications
has attribution         => ( is => 'lazy' );
has persons             => ( is => 'lazy' );
has relationships       => ( is => 'lazy' );
has source_descriptions => ( is => 'lazy' );
has agents              => ( is => 'lazy' );
has places              => ( is => 'lazy' );


1;
