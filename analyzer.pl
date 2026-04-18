#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

# open file
my $logfile = 'sample.log';

open(INPUT, $logfile) or die("Log file $logfile not found.\n");

# loop through each line
while(my $line = <INPUT>) {
    print $line;
    # Detect Error and Warning lines
    if($line =~ /(ERROR:)/) {
        print "Matched: '$1'\n";
    }
    if($line =~ /(WARNING:)/) {
        print "Matched: '$1'\n";
    }
    
}

close(INPUT);

