#!/bin/bash
FILE=/tmp/install_done

if [ -f $FILE ]
then
	echo "File $FILE exists..."
else
	apt-get install libqt4-dev -y
    touch /tmp/install_done
fi