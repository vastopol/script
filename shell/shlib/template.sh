#!/bin/bash

# template for procedural shell script
# uses external functions from a library

#----------------------------------------

# include library functions
source sh_lib.sh

# main procedure
function main()
{
    # separate user input
    IFS=' ' read -r FLAG ARGS <<< "$@"

    if [ $# -eq 0 ] ; then
        echo "Error: Missing flag/arguments"
        exit 1
    fi

    case $FLAG in
        -p) #----------------------------------------
                fprinter $ARGS
            ;;
        *)  #----------------------------------------
                echo "Error: Invalid flag option"
                exit 1
            ;;
    esac

    return
}

#----------------------------------------

# call main procedure and pass command line arguments
main $@
