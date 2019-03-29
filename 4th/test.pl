#!/usr/bin/env perl
use strict;
use warnings;

my $str = 'Hello, hoge! Hello, fuga!';
my @name = ($str =~ /Hello, (\w+?)!/g);
print @name;