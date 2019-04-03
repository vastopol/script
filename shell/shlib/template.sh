#!/bin/bash

# template for procedural shell script
# uses external functions from a library

#----------------------------------------

# include library functions
source sh_lib.sh

# main procedure
function main()
{
    # variables
    FLAG="$1"
    ARG_ARRAY=$@
    FILES=("${ARG_ARRAY[@]:2}")

    case $FLAG in
        -p) #----------------------------------------
                fprinter $FILES
            ;;
        *)  #----------------------------------------
                echo "invalid option"
                exit 1
            ;;
    esac

    return
}

#----------------------------------------

# call main procedure and pass command line arguments
main $@
