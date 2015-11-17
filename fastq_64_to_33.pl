#!/usr/bin/env perl

use strict;
use warnings;

use convert;

my $filename = shift @ARGV;

convert::convert($filename, 64, 33);


