#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/";

use convert;

my $filename = shift @ARGV;

convert::convert( $filename, 64, 33 );

