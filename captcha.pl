#!/usr/local/bin/perl
use strict;
use warnings;

print "Content-Type: text/plain\n\n";


my $factor = int(rand(100));
my $amount = int(rand(3)) + 3;
my $cycle;
my @vowels = ("A","O","E","Y","U","I");
my @consonants = ("B","D","F","G","H","K","L","M","P","C","X");
my @words = ("EXAMPLE","PRE","DEFINED","WORDS");
my @captcha;
my $rand;

$factor = int(rand(100));
if($factor < 70){
	$amount = int(rand(3)) + 3;
	$cycle = int($amount/2 + 0.5);
	for (my $i=0; $i < $cycle; $i++) {
		$rand = int(rand(0+@vowels));
		push(@captcha, @vowels[$rand]);
		if(!($i == $cycle-1 && $factor > 50) && $i != 2){
			$rand = int(rand(0+@consonants));
			push(@captcha, @consonants[$rand]);
		}
	}
}
else {
	$rand = int(rand(0+@words));
	push(@captcha, @words[$rand]);
}
print @captcha;