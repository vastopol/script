#!/bin/bash

# Bash Function Library
# this will include useful functions

# test function
function fprinter()
{
    for F in "$@" ; do
        file $F
    done
}
