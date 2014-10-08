#!/usr/bin/perl
use strict;
use warnings;

$| = 0;

sub translate($);

my $dataPrefix = "R!a\@t\$%v^%#&*%%^a*&^r()&r&^%e%^\$v&^%\$a&^%\$\$t%\$#";
my $dataSuffix = "u*^%\$r^&%n*&*^%()%&*^y&^%g!#)(*&)))(**&u";

my $prefix = translate($dataPrefix);
my $suffix = translate($dataSuffix);

print("$prefix $suffix\n");

sub translate($)
{
	$_ = shift;

	s/[[:^ascii:],\W]//g;
	tr/a-zA-Z/n-za-mN-ZA-M/;

	return $_;
}