#!/usr/bin/env perl
use strict;
use warnings;

print "input string: ";
my $str = <STDIN>;

# if (($str =~ /perl/) || ($str=~/Perl/)) {
#     print "Perl Monger!\n"
# }
if (($str =~ /perl/) || ($str=~/Perl/)) {
    print "Perl Monger!\n"
}