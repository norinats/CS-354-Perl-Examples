#C:\Dwimperl\perl

use strict;
use warnings;
use 5.010;

my $sum = 0;
my @numbers = (1, 2, 3, 4);

foreach my $n (@numbers) {
	$sum = $sum + $n;
}

say $sum; #answer should be 10



