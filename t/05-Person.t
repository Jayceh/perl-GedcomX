#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 3;
use File::Slurp qw( slurp );
use JSON qw(from_json);
use Data::Debug;

use_ok ('GedcomX::Data::Person');

my $example = from_json(slurp('t/example.json'));

my $george = GedcomX::Data::Person->new($example->{'persons'}->[0]);
isa_ok( $george, 'GedcomX::Data::Person', 'New object is of the correct class');

isa_ok ( $george->names->[0], 'GedcomX::Data::Name', 'First result of names method is a Name Object' );

