#!/usr/bin/env perl
use strict;
use warnings;

my $data = q{
papix : sushi
moznion : soba
boolfool : sushi
macopy : sushi
};

my @data_split = split/\n/, $data;
my $food;

foreach (@data_split) {
    if (/: (.+)/) {
        $food->{$1}++;
    }
}

while (my ($key, $val) = each %$food) {
    print "$key : $val\n"; 
}