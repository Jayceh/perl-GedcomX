package GedcomX::Data::Name;
use Moo;
use Types::URI -all;
use GedcomX::Data::NameForm;

# ABSTRACT: Name - Base object for names and their broken out parts and facts

has type       => ( is => 'lazy', isa => Uri, coerce => 1);
has name_forms => ( is => 'lazy' );
has nameForms  => ( is => 'lazy' );
has date       => ( is => 'lazy' );
has id         => ( is => 'lazy' );


sub _build_name_forms {
  my $self = shift;
  my @nameforms =  map { GedcomX::Data::NameForm->new($_) } @{$self->nameForms};
  return \@nameforms;
}

1;
