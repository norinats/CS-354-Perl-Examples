#C:\Dwimperl\perl

use strict;
use warnings;
use 5.010;

sub printLowercase {
	my ($arg) = @_;
	say lc $arg;
}

sub printUppercase {
	my ($arg) = @_;
	say uc $arg;
}

sub numLowercase {
	my ($arg) = @_;
	my @chars = split("", $arg);
	my $numLowercase = 0;
	my @lowercase = ('a','b','c','d','e','f','g','h','i','j','k','l','m',
		'n','o','p','q','r','s','t','u','v','w','x','y','z');
	foreach my $i (0 .. $#chars) {
		for (my $j=0; $j < 26; $j++) {
			if($chars[$i] eq $lowercase[$j]) {
				$numLowercase = $numLowercase + 1;
			}
		}
	}
	return $numLowercase;
}

sub numUppercase {
	my ($arg) = @_;
	my @chars = split("", $arg);
	my $numUppercase = 0;
	my @uppercase = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
		'O','P','Q','R','S','T','U','V','W','X','Y','Z');
	foreach my $i (0 .. $#chars) {
		for (my $j=0; $j < 26; $j++) {
			if($chars[$i] eq $uppercase[$j]) {
				$numUppercase = $numUppercase + 1;
			}
		}
	}
	return $numUppercase;
}

print("type a word: ");
my $word = <STDIN>;
chomp $word;

printLowercase($word);
printUppercase($word);
my $numLowercase = numLowercase($word);
my $numUppercase = numUppercase($word);
print("$word has $numLowercase lowercase letters and $numUppercase uppercase letters\n");






