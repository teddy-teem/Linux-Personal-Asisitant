
source $(pwd)/helpers/commonHelper.sh


function runLocalStack {
    cd ~ ;
    cd ./localstack ;
    gnome-terminal --tab --title="LocalStack" -- bash -c "sleep 1s;docker-compose up; exec bash -i"
    clear

}