#!/bin/bash

# binary information script
# usage: ./binfo.sh input > output

# most of the commands can be output on terminal and redirect to file
# strace && ltrace have to output to file then cat file

echo
echo "file"
echo

file $1

echo
echo "nm"
echo

nm $1

echo
echo "packer search"
echo

strings $1 | grep upx
# add others later

echo
echo "strings"
echo

strings $1

echo
echo "ltrace"
echo

ltrace -o outfile.txt "./$1"
cat outfile.txt
rm outfile.txt

echo
echo "strace"
echo

strace -o outfile.txt "./$1"
cat outfile.txt
rm outfile.txt

echo
echo "readelf"
echo

readelf -a $1

echo
echo "objdump"
echo

objdump -d $1

