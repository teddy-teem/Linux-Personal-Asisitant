#!/bin/bash
clear
source $(pwd)/helpers/dirHelper.sh
source $(pwd)/helpers/processHelper.sh
source $(pwd)/helpers/printOptions.sh
source $(pwd)/helpers/dbHelper.sh
source $(pwd)/helpers/extraServices.sh
source $(pwd)/helpers/boilerplate.sh



while true
do
    printOptions
    echo -n "Chose:  "
    read case;
    case $case in
        0) killProcessByPort ;;
        1) myip ;;
        2) runDDB ;;
        3) runMysqlService ;;
        4) runLocalStack ;;
        5) findDir ;;
        6) listRunningProcesses ;;
        7) createBoilerplate ;;
        *) clear;;
    esac
done


function anyKey {
    read anyKey
}