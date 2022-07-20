#!/bin/bash

myOptions=(
    "Kill Runnig Port ✓" #0
    "MyIP ✓" #1
    "Run DDB server ✓" #2
    "Run MySQL server ✓" #3
    "Run Localstack ✓" #4
    "find the directory ✓" #5
    "List Running Process ✓" #6
    "Create Boilerplate " #7


)
function printOptions {
    for i in ${!myOptions[@]}; do
        echo "$i) ${myOptions[$i]}"
    done
}
