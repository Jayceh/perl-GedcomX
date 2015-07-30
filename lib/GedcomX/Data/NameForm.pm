package GedcomX::Data::NameForm;
use Moo;
use GedcomX::Data::NamePart;

# ABSTRACT: NameForm - The NameForm data type defines a representation of a name (a "name
# form") within a given cultural context, such as a given language and script.
# https://github.com/FamilySearch/gedcomx/blob/master/specifications/conceptual-model-specification.md#319-the-nameform-data-type


has parts     => ( is => 'lazy' );
has lang      => ( is => 'lazy' );
has full_text => ( is => 'lazy' );

sub BUILDARGS {
   my ( $class, @args ) = @_;
   my @names = map { GedcomX::Data::NamePart->new($_) } @{$args[0]->{'parts'}};
   $args[0]->{'parts'} = \@names;
   return $args[0];
}

sub _build_full_text {
  my $self = shift;
  return join(' ', map { $_->{'value'} } @{ $self->parts });
}

1;
