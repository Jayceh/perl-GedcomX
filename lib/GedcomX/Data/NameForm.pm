package GedcomX::Data::NameForm;
use Moo;

has parts     => ( is => 'lazy' );
has lang      => ( is => 'lazy' );
has full_text => ( is => 'lazy' );

1;
