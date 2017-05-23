pwd
read -p "Are you sure to overwrite the mms lib ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf /tmp/MMS_LIB
	cp -rf ~/gitdir/MMS_LIB /tmp/
	find /tmp/MMS_LIB/ -name ".git" -delete
	find /tmp/MMS_LIB/ -name ".*" -delete
	rm -rf ./MMS_LIB
	mkdir mms
	cp -rf /tmp/MMS_LIB/* ./mms
	echo "MMS LIB COPY"
fi

