#!/usr/bin/env perl
use strict;
use warnings;

sub add {
    my ($num1, $num2) = @_;
    return ($num1+$num2);
}
sub min {
    my ($num1, $num2) = @_;
    return ($num1-$num2);
}
sub mul {
    my ($num1, $num2) = @_;
    return ($num1*$num2);
}
sub div {
    my ($num1, $num2) = @_;
    return ($num1/$num2);
}

print "input first number: ";
chomp(my $input1 = <STDIN>);
print "input second number: ";
chomp(my $input2 = <STDIN>);

print<<~"EOL";
    summation is @{[add($input1, $input2)]}
    difference is @{[min($input1, $input2)]}
    production is @{[mul($input1, $input2)]}
    quotation is @{[div($input1, $input2)]}
EOL
