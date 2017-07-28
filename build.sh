#!/bin/sh
if [[ ! -n $1 ]] ; then
	echo "Need arg"
else
	echo y | /bin/sh ~/scripts/makeh.sh "$1" 1 ;
	echo y | /bin/sh ~/scripts/makemf2.sh "$1"
fi
