#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

sub calc {
    my ($num1, $num2) = @_;
    if (($num1=~/[0-9]/)&&($num2=~/[0-9]/)) {
        my $hash_ref;
        $hash_ref->{add} = $num1+$num2;
        $hash_ref->{sub} = $num1-$num2;
        $hash_ref->{mul} = $num1*$num2;
        $hash_ref->{div} = $num1/$num2;
        $hash_ref->{mod} = $num1%$num2;
        return Dumper($hash_ref);
    } else {
        return;
    }
}

print (calc(7,2));