#! /usr/bin/env bash
function newfile
{
    if [ -s current.txt ] ; then
        mv "current.txt" "$(date +"%Y-%m-%d_%H:%M:%S").txt"
        echo "wrote $2"
    fi
    touch current.txt
}

if [ ! -a getLine.exe ] ; then
    echo "Building getLine.exe"
    gcc getLine.c -o getLine.exe
fi

echo "launching dreamweaver in 5 seconds"
echo "press Ctrl+C to cancel"
sleep 5
echo "didn't exit"

while true
do
    ./getLine.exe >> current.txt
    if [ $? -eq 1 ] ; then
        newfile
    fi
done

