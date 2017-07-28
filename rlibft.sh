pwd
read -p "Are you sure to overwrite the libft ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -rf /tmp/libft
	cp -rf ~/backup/libft /tmp/
	rm -rf /tmp/libft/.git
	rm -rf ./libft
	cp -rf /tmp/libft ./
	echo "LIBFT COPY"
fi

