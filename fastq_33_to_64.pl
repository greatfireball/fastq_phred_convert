#!/usr/bin/env perl

use strict;
use warnings;

use convert;

my $filename = shift @ARGV;

convert::convert( $filename, 33, 64 );
