#! /bin/bash

function push() { 
    
    cd $(dirname $0)
    git add .
    git commit -m "add file"
    git push school_code master:master
    echo "completed"
    return 


}
function pull() {
    
    cd $(dirname $0)
    git pull school_code master
    echo "completed"
    return 
}


echo "activated"
echo $1
if [[ $1 == "push" ]];then
    push
    if [[ $? -eq 1 ]];then
       echo "failed to push"
    fi
elif [[ $1 == "pull" ]];then
    pull
    if [[ $? -eq 1 ]];then
       echo "failed to pull"
    fi
else
    echo "invalid try again"
fi

