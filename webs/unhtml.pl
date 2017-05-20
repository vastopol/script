#!/usr/bin/perl

# unhtml.pl: delete HTML tags

while(<>)	# collect all input into single lines
{
	$str .= $_;	# by concatenating input lines
}

$str =~ s/<[^>]*>//g; # delete <...>
$str =~ s/&nbsp;/ /g; # replace &nbsp; by blank
$str =~ s/\s+/\n/g;	  # compress white space
print $str;