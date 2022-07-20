#!/bin/bash

function printBoilerplateOptions {
    echo "=========Boilerplate Options========="
    echo " 1) React app ";
    echo " 2) Koa app";
    echo " 3) Express app";
}

function createBoilerplate {
    printBoilerplateOptions
    echo -n "Enter Option (Enter to Exit): "
    read optn
    if  [ $optn = 1 ]
     then
        echo "Creating React App..."
    elif [ $optn = 2 ]
        then
            echo "Creating Koa App..."
    elif [ $optn = 3 ]
        then
            echo "Creating Express App..."
    else clear
    fi;
    sleep 3s
    clear
}