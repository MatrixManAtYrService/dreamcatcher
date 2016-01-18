#! /usr/bin/env bash
function newfile
{
    if [ -s current.txt ] ; then
        mv "current.txt" "$(date +"%Y-%m-%d_%H:%M:%S").txt"
        echo "wrote $2"
        python wroteFile.py     # blink rapidly 1 sec
    fi
    touch current.txt
}

if [ ! -a getLine.exe ] ; then
    echo "Building getLine.exe"
    gcc getLine.c -o getLine.exe
fi

echo "launching dreamweaver in 5 seconds"
echo "press Ctrl+C to cancel"
                                # blink rapidly 5 sec
(cmdpid=$BASHPID; (sleep 10; kill $cmdpid) & exec python start.py )

python wait.py                  # dim led

while true
do
    ./getLine.exe >> current.txt
    python wroteLine.py         # single 1/4 sec blip
    if [ $? -eq 1 ] ; then
        newfile
    fi
done

