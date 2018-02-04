#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;
use Time::HiRes qw( time );

my $MAX = 1_000_000;
my($start, $end);


my @arr = (1 .. 1_000_000) ;
say "Array has $MAX items.";


print "\nTest pop: ";
$start = time();
for(my $i = 0; $i < $MAX; $i++) {
	pop @arr;
}
$end = time();
printf("%.5f\n", $end - $start);
say scalar(@arr);


@arr = (1 .. 1_000_000) ;
print "\nTest shift: ";
$start = time();
for(my $i = 0; $i < $MAX; $i++) {
	shift @arr;
}
$end = time();
printf("%.5f\n", $end - $start);
say scalar(@arr);


@arr = (1 .. 1_000_000) ;
print "\nTest splice pop: ";
$start = time();
for(my $i = 0; $i < $MAX; $i++) {
	splice( @arr, -1);
}
$end = time();
printf("%.5f\n", $end - $start);
say scalar(@arr);


@arr = (1 .. 1_000_000) ;
print "\nTest splice shift: ";
$start = time();
for(my $i = 0; $i < $MAX; $i++) {
	splice( @arr, 0, 1);
}
$end = time();
printf("%.5f\n", $end - $start);
say scalar(@arr);

