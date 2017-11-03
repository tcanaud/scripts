#!/bin/sh 

while [ 1 ] ; do echo "\033[0;44mcheck leaks for \"$1\"\033[0m"; for pid in `pgrep $1`; do leaks $pid | grep "0 leaks" 1>&- && echo "$pid \033[0;32mno leaks ✓\033[0m" || echo "$pid \033[0;31mleaks ⚠\033[0m" ; done;
	if [ -z $pid  ]
	then
		echo "$1 \033[1;33mnot found\033[0m"
		sleep 1
	fi
	pid=""
	sleep 1
done
