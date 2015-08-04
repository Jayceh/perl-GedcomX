package GedcomX::Data::Attribution;
use Moo;
use Types::URI -all;

# ABSTRACT: An Attribution type
#
# SYNOPSIS: The Attribution data type defines the data structure used to attribute who,
# when, and why to genealogical data. Data is attributed to the agent who made the latest
# significant change to the nature of the data being attributed. The definition of a
# "significant change" is outside the scope of this specification and is left to the
# implementer of the application.
use Types::URI -all;

has contributor   => ( is => 'lazy' ); # options, must be Agent type but is a URI?
has modified      => ( is => 'lazy' );
has changeMessage => ( is => 'lazy' );             # TODO: change_message ?

1;
