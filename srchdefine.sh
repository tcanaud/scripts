for file in `find /usr/include -type f`; do cat $file | grep $1 1>&- && echo "found in:" $file && cat $file | grep $1 && echo ;done
