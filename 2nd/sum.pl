#!/usr/bin/env perl
use strict;
use warnings;

my @val = (1..100);
my $sum = 0;
for my $i (@val) {
    $sum += $i;
}
print $sum."\n";