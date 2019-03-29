#!/usr/bin/env perl
use strict;
use warnings;

print "input number:";
my $num = <STDIN>;
if ($num%2==0) {
    print "even\n";
}
else {
    print "odd\n";
}