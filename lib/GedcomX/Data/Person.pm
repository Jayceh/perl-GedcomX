package GedcomX::Data::Person;
use Moo;
use Type::Library -base;
#use Type::Utils -all;
use Types::Standard qw( Bool Enum ArrayRef InstanceOf );
use GedcomX::Data::Name;

# ABSTRACT: A Person is one of the top elements in an Gedcom record

use Data::Debug;

with 'GedcomX::Data::Role::Subject';

has names =>  (
  is      => 'ro',
  lazy    => 1,
  isa    => ArrayRef[InstanceOf['GedcomX::Data::Name']],
  #builder => '_build_names',
);

has gender  => ( is => 'lazy');#, isa => Enum[qw( Male Female Unknown )] );
has facts   => ( is => 'lazy' );
has private => ( is => 'lazy', isa => Bool );

sub BUILDARGS {
   my ( $class, @args ) = @_;
   my @names = map { GedcomX::Data::Name->new($_) } @{$args[0]->{'names'}};
   $args[0]->{'names'} = \@names;
   return $args[0];
}

1;
