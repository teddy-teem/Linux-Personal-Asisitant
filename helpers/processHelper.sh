
source $(pwd)/helpers/commonHelper.sh


function killProcessByPort {
    echo -n "Port Number: "
    read port
    kill -9 $(lsof -t -i:"$port")
    exit
}

function listRunningProcesses {
    ps -axjf
    exit
}

function myip() {
    curl http://icanhazip.com      
    ip addr | grep inet$IP | \
    cut -d"/" -f 1 | \
    grep -v 127\.0 | \
    grep -v \:\:1 | \
    awk '{$1=$1};1'
    exit
}