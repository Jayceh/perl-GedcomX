package GedcomX;
use Moo;

use Types::Standard qw( ArrayRef InstanceOf );
use Data::Debug;
#---- GedcomX Types
use GedcomX::Data::Person;
use GedcomX::Data::Attribution;
use GedcomX::Data::Agent;

# ABSTRACT: Implement Data models, and tools for working with GedcomX documents

# SYNOPSIS: Follow specs at https://github.com/FamilySearch/gedcomx/tree/master/specifications
has attribution         => ( is => 'lazy', coerce => sub { GedcomX::Data::Attribution->new($_[0]); } );
has persons             => ( is => 'lazy' );
has relationships       => ( is => 'lazy' );
has source_descriptions => ( is => 'lazy' );
has agents              => ( 
                             is     => 'lazy',
                             isa    => ArrayRef[InstanceOf['GedcomX::Data::Agent'], 
                             coerce => sub { [map {GedcomX::Data::Agent->new($_)} @{ $_[0] }] } ); #still a little naive if they don't enter it as a list? what if already an object, does it fire again
has places              => ( is => 'lazy' );


sub _build_agents {
  my $self = shift;
  return [];
}

1;
