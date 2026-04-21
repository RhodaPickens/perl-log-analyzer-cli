#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

# CLI input
die "Usage: perl analyzer.pl <file>\n" unless @ARGV;    # if no file provided, stop and show usage instructions
my $logfile = $ARGV[0];

open(my $fh, '<', $logfile) or die("Log file $logfile not found.\n");

my %errors;                         # error type : frequency
my %warnings;
my $total_lines = 0;

# loop through each line
while(my $line = <$fh>) {

    $total_lines++;

    # Detect Error and Warning lines
    if($line =~ /ERROR:\s(\w+)/) {
        my $error_type = $1;
        $errors{$error_type}++;     # counts how many times error appeared
    }
    if($line =~ /WARNING:\s(\w+)/) {
        my $warning_type = $1;
        $warnings{$warning_type}++;
    }
    
}

close($fh);

# generate summary report
print "\nERROR SUMMARY\n-------------------\n";

foreach my $key (sort keys %errors) {
    print "$key: $errors{$key}\n";  # prints error name and count
}

print "\nWARNING SUMMARY\n-------------------\n";

foreach my $key (sort keys %warnings) {
    print "$key: $warnings{$key}\n";  # prints warning name and count
}

print "\nTotal lines processed: $total_lines\n\n";