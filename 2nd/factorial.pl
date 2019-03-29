#!/usr/bin/env perl
use strict;
use warnings;

print "enter number:";
my $val = <STDIN>;
my $prod = 1;
for my $i (1..$val) {
    $prod *= $i
}
print $prod."\n";