package GedcomX::Data::Name;
use Moo;
use GedcomX::Data::NameForm;

has type       => ( is => 'lazy' );
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
