#! /usr/bin/env perl

#######################################################################

use strict;
use warnings;

my $numsubj = "250";                     # number of subjects
my $id;
my $prefix = "IMG";                  # the prefix used for your study

for ( $id = 0; $id < $numsubj; $id++ ) {
        $id = sprintf( "%01d", $id );   # if you use leading zeros as fillers in your naming convention (change the number 4 to the total number of digits) 
        `sudo mkdir output`;
        print "Running dcm2mnc -usecoordinates IMG$id output\n";
        `sudo dcm2mnc -usecoordinates -dname '' -fname 'IMG$id' IMG$id output`;
}