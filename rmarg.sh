pwd
read -p "Are you sure to overwrite the marg lib ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf /tmp/MARG_LIB
	cp -rf ~/gitdir/MARG_LIB /tmp/
	find /tmp/MARG_LIB/ -name ".git" -delete
	find /tmp/MARG_LIB/ -name ".*" -delete
	rm -rf ./MARG_LIB
	cp -rf /tmp/MARG_LIB ./
	echo "MARG LIB COPY"
fi

