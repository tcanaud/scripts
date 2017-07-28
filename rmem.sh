pwd
read -p "Are you sure to overwrite the mem library ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf /tmp/mem
	cp -rf ~/gitdir/mem /tmp/
	rm -rf /tmp/mem/.git
	rm -rf ./mem
	cp -rf /tmp/mem ./
	echo "LIBFT COPY"
fi

