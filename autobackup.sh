rm -rf /tmp/backup
mkdir /tmp/backup
cp -r ~/gitdir/* /tmp/backup
find /tmp/backup/ -name ".*" -delete
cd ~/backup
git rm -rf *
cp -r /tmp/backup/* ~/backup/
git add *
git commit -m "backup" > /dev/null
git push > /dev/null
echo "Backup updated"
