#!/usr/bin/env perl
use strict;
use warnings;

sub output_array_and_hash {
    my ($arg1, $arg2) = @_;

    print "content of list reference is\n";
    for (@$arg1) {
        print "$_\n";
    }

    print "content of hash reference is\n";
    while (my ($i, $j) = each %$arg2) {
        print "$i, $j\n";
    }
}

my $list_ref = ['a', 'b', 'c'];
my $hash_ref = {
    key1 => 'val1',
    key2 => 'val2'
};
output_array_and_hash($list_ref, $hash_ref);