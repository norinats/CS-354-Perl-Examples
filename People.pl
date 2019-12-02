#C:\Dwimperl\perl

use strict;
use warnings;
use 5.010;

my @names;

#add a person using the format addPerson($person, $person2, ...)
sub addPeople {
	my @args = @_;
	my $length = scalar @args;
	my $i = 0;
	while ($i < $length) {
		push @names, $args[$i];
		$i = $i + 1;
	}
}

#remove most recently added person using the format removePerson()
sub removePerson {
	if ((scalar @names) == 0) {
		return;
	}
	my $lastPerson = pop @names;
	print("$lastPerson has been removed\n");
}

sub printPeople {
	foreach my $i (0 .. $#names) {
		say "$names[$i]";
	}
}

addPeople('ann', 'bob', 'carla', 'dave');
printPeople();
removePerson();
printPeople();


	
	