pwd
read -p "Are you sure to overwrite the VSH lib ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf /tmp/VSH_LIB
	cp -rf ~/gitdir/VSH_LIB /tmp/
	find /tmp/VSH_LIB/ -name ".git" -delete
	find /tmp/VSH_LIB/ -name ".*" -delete
	rm -rf ./VSH_LIB
	cp -rf /tmp/VSH_LIB ./
	echo "VSH LIB COPY"
fi

