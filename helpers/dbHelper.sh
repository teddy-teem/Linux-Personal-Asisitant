#!/bin/bash


function printMySqlOptions {
    echo " 1) Start Server ";
    echo " 2) Check Status";
    echo " 3) Stop Server";
}

function runMysqlService {
    printMySqlOptions
    echo -n "Enter Option (Enter to Exit): "
    read optn
    if  [ $optn = 1 ]
     then
        sudo service mysql start
        echo "Server started successfully!"
    elif [ $optn = 2 ]
        then
            gnome-terminal --tab --title="MySql Server Status" -- bash -c "sleep 1s; echo \"Running Status of MySql Server\" ;service mysql status; exec bash -i"
    elif [ $optn = 3 ]
        then
            sudo service mysql stop
            echo "Server stopped successfully!"
    else clear
    fi;
    exit
}

function runDDBForAU {
    cd ~ ;
    cd ./DynamoDbAU ;
    gnome-terminal --tab --title="AU DDB" -- bash -c "sleep 1s; echo \"Running AU DDB\" ;java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb; exec bash -i"
}
function runDDBForLocal {
    cd ~ ;
    cd ./DynamoDbLocal ;
    gnome-terminal --tab --title="Local DDB" -- bash -c "sleep 1s; echo \"Running Local Practice DDB\" ;java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -port 8001; exec bash -i"
    clear
}
function runDDB {
    printDDBOptions
    echo -n "Enter Option (Enter to Exit): "
    read optn
    if  [ $optn = 1 ]
     then
        runDDBForAU
    elif [ $optn = 2 ]
        then
            runDDBForLocal
    else clear
    fi;
    clear
}
function printDDBOptions {
    echo " 1) for AU DDb ";
    echo " 2) for Local Practice DDB"
}