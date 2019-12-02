#C:\Dwimperl\perl

use strict;
use warnings;

print("Type in a number: ");
my $number = <STDIN>;
chomp $number;

my $mod = $number % 2;

if($mod == 1) {
	print("Your number is odd\n");
} else {
	print("Your number is even\n");
}



