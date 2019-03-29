#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use Statistics::Lite qw(:all);

my $alice = {
    name        => 'Alice',
    country     => 'England',
    perl        => 60,
    python      => 80,
    ruby        => 80,
    php         => 50,
    binary      => 30,
};
my $bob = {
    name        => 'Bob',
    country     => 'America',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 50,
};
my $carol = {
    name        => 'Carol',
    country     => 'England',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $dave = {
    name        => 'Dave',
    country     => 'Canada',
    perl        => 60,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $ellen = {
    name        => 'Ellen',
    country     => 'America',
    perl        => 1,
    python      => 15,
    ruby        => 0.5,
    php         => 60,
    binary      => 0.01,
};


# 2-1 -----------------------------------------------

my @array = ($alice, $bob, $carol, $dave, $ellen);
for my $i (@array) {
    ${$i}{sum} = 
        ${$i}{perl} +
        ${$i}{python} +
        ${$i}{ruby} +
        ${$i}{php} +
        ${$i}{binary};
}


# 2-2 -----------------------------------------------

my $average = {};
for my $i (0..($#array)) {
    ${$average}{${$array[$i]}{name}} = 
        mean (
            ${$array[$i]}{perl},
            ${$array[$i]}{ruby},
            ${$array[$i]}{python}
        );
}
print Dumper($average)."\n";


# 2-3 -----------------------------------------------

for my $i (0..($#array)) {
    my @point = (
        ${$array[$i]}{perl},
        ${$array[$i]}{python},
        ${$array[$i]}{ruby},
        ${$array[$i]}{php},
        ${$array[$i]}{binary}
    );

    for my $j (0..($#point)) {
        if ($point[$j]==100) {
            $point[$j]="*****";
        } elsif ($point[$j]>=80) {
            $point[$j]="****";
        } elsif ($point[$j]>=60) {
            $point[$j]="***";
        } elsif ($point[$j]>=40) {
            $point[$j]="**";
        } elsif ($point[$j]>=20) {
            $point[$j]="*";
        } else {
            $point[$j]="";
        }
    }

    print <<"    EOL";
    ${$array[$i]}{name}
        perl    : $point[0]
        python  : $point[1]
        ruby    : $point[2]
        php     : $point[3]
        binary  : $point[4]
    EOL
}


# 2-4 -----------------------------------------------

my $highscore = {};
my @ctr = ();
for my $i (0..($#array)) {
    if (${$array[$i]}{perl}>=60) {
        if (!exists ${$highscore}{${$array[$i]}{country}}) {
            ${$highscore}{${$array[$i]}{country}} = [];
        }
        push @{${$highscore}{${$array[$i]}{country}}}, ${$array[$i]}{name};
    }
}
print Dumper($highscore)."\n";


# 2-5 -----------------------------------------------

print "[\n";
for my $i (0..($#array)) {
    print <<~EOL;
        {
            "python":${$array[$i]}{python}
            "binary":${$array[$i]}{binary}
            "name":${$array[$i]}{name}
            "ruby":${$array[$i]}{ruby}
            "perl":${$array[$i]}{perl}
            "php":${$array[$i]}{php}
            "country":${$array[$i]}{country}
        }
    EOL
}
print "]\n";