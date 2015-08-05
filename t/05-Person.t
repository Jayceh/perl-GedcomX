#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 5;
use File::Slurp qw( slurp );
use JSON qw(from_json);
use Data::Debug;

use_ok ('GedcomX::Data::Person');

my $example = from_json(slurp('t/example.json'));
#-----------------------
my $george = GedcomX::Data::Person->new($example->{'persons'}->[0]);
isa_ok( $george, 'GedcomX::Data::Person', 'New object is of the correct class');

my $fname = $george->names->[0];
isa_ok ( $fname, 'GedcomX::Data::Name', 'First result of names method is a Name Object' );
is( $fname->id, 789, "Check Name ID");
is( $fname->name_forms->[0]->full_text, "George Washington", "Full Name matches");

