#!/usr/bin/env perl
use strict;
use warnings;

sub love_food {
    foreach (@_) {
        if (/(.+) loves (.+)!/) {
            print "$1 -> $2\n";
        }
    }
}

my $words_ref = [
    'alice loves meat!',
    'bob loves sushi!',
];
love_food(@$words_ref);