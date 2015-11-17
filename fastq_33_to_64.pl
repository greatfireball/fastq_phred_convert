#!/usr/bin/env perl

use strict;
use warnings;

my $filename = shift @ARGV;

if (! defined $filename || -e $filename)
{
	print "You need to specify one input filename as single parameter\n";
	exit 1;
}

open(FH, "<", $filename) || die "Unable to open the file '$filename': $!";
while(!eof(FH))
{
	my ($header, $seq, $header2, $qual) = (scalar <FH>, scalar <FH>, scalar <FH>, scalar <FH>);

	# delete trailing newline from $quality line
	chomp($qual);

	# create new quality line
	$qual = join("", map {chr(ord($_)-33+64)} (split(//, $qual)));

	print $header, $seq, $header2, $qual, "\n";
}
close(FH) || die "Unable to close file '$filename': $!";


