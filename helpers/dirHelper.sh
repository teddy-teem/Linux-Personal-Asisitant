#!/bin/bash
function findDir {
    cd ~
    echo -n "Directory Name: "
    read dirName
    find -type d -name "$dirName"
    exit
}