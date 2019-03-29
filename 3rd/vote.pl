#!/usr/bin/env perl
use strict;
use warnings;

my %Uma = (
    name => 'Umazume',
    fav_food => ['cake', 'bread', 'egg']
);
my $Uma_ref = \%Uma;

my $Aky_ref = {
    name => 'Aky',
    fav_food => ['apple', 'strawberry']
};

my %Chi = (
    name => 'Chi',
    fav_food => ['icecream', 'chocolate', 'snacks']
);
my $Chi_ref = \%Chi;

my @array = ($Uma_ref, $Aky_ref, $Chi_ref);
my @rank = ();
for my $i (0..($#array)) {
    for my $j (@{$array[$i]->{fav_food}}) {
        push @rank, $j;
    }
}

for my $i (@rank) {
    print $i."\n";
}