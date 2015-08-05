#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 3;
use File::Slurp qw( slurp );
use JSON qw(from_json);
use XML::Simple qw(:strict);
use Data::Debug;

## test the master class
use_ok ('GedcomX');

my $example = from_json(slurp('t/example.json'));
my $doc = GedcomX->new($example);
isa_ok( $doc, 'GedcomX' );

my $xml_example = XMLin('t/example.xml', KeyAttr => [], ForceArray => 1);
#my $xml_example = xml2pl(slurp('t/example.xml'));
debug $xml_example;
my $doc2 = GedcomX->new($example);
isa_ok( $doc2, 'GedcomX' );

debug $doc2;
