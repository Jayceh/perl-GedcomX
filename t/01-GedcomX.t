#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 2;
use File::Slurp qw( slurp );
use JSON qw(from_json);
use Data::Debug;

## test the master class
use_ok ('GedcomX');

my $example = from_json(slurp('t/example.json'));
my $doc = GedcomX->new($example);
isa_ok( $doc, 'GedcomX' );

debug $doc;
