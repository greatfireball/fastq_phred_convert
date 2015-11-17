package convert;

sub convert {

    my ( $filename, $from, $to ) = @_;

    unless ( defined $filename && -e $filename ) {
        print "You need to specify one input filename as single parameter\n";
        exit 1;
    }

    open( FH, "<", $filename ) || die "Unable to open the file '$filename': $!";
    while ( !eof(FH) ) {
        my ( $header, $seq, $header2, $qual ) =
          ( scalar <FH>, scalar <FH>, scalar <FH>, scalar <FH> );

        # delete trailing newline from $quality line
        chomp($qual);

        # create new quality line
        $qual = join( "",
            map { chr( ord($_) - $from + $to ) } ( split( //, $qual ) ) );

        print $header, $seq, $header2, $qual, "\n";
    }
    close(FH) || die "Unable to close file '$filename': $!";
}

1;
