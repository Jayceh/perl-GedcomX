package GedcomX::Data::Fact;
use Moo;

with 'GedcomX::Data::Role::Conclusion';

# ABSTRACT: Objects about true data 

has type       => ( is => 'lazy' ); # enum
has date       => ( is => 'lazy' );
has place      => ( is => 'lazy' );
has qualifiers => ( is => 'lazy' );
has value      => ( is => 'lazy' );


1;

__END__

=head1 DESCRIPTION

The Fact data type defines a data item that is presumed to be true about a specific subject, such as a person or relationship. To distinguish the concept of "fact" from "event", refer to

=head1 SEE ALSO

https://github.com/FamilySearch/gedcomx/blob/master/specifications/fact-types-specification.md
