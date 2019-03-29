#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    if ($input eq 0) {
        last;
    }
    # elsif ($input =~ /perl|Perl/) {
    #     print "Find Perl!\n";
    # }
    # elsif ($input =~ /python/i) {
    #     print "Find Python!\n";
    # }
    elsif ($input =~ /perl|ruby|python/) {
        print "Love Programming!\n";
    }
    elsif ($input =~ /^papix/) {
        print "Find papix!\n"
    }
    elsif ($input =~ /Hello (.+)/) {
        print "Hello! $1!\n";
    }
}