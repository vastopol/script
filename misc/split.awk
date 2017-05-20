#!/usr/bin/awk -f

# split.awk: format input into one word per line
{ for (i = 1; i <= NF; i++) print $i }