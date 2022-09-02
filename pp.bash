#! /bin/bash
echo "yo"
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



echo $1
if [[ $1 == "p" ]];then
    push
    if [[ $? -eq 1 ]];then
       echo "failed to push"
    fi
else
    pull
    if [[ $? -eq 1 ]];then
       echo "failed to pull"
    fi
fi

