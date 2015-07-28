package GedcomX::Data::Agent;
use Moo;

# SYNOPSIS: The Agent data type defines someone or something that curates genealogical data, such as a genealogical researcher, user of software, or organization.

has id          => ( is => 'lazy' );
has identifiers => ( is => 'lazy' );
has name        => ( is => 'lazy' );
has homepage    => ( is => 'lazy' );
has openid      => ( is => 'lazy' );
has accounts    => ( is => 'lazy' );
has emails      => ( is => 'lazy' );
has phones      => ( is => 'lazy' );
has addresses   => ( is => 'lazy' );
has person      => ( is => 'lazy' );

1;
