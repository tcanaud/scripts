rm -rf /tmp/backup
mkdir /tmp/backup
cp -r ~/gitdir/* /tmp/backup
rm -rf /tmp/backup/*/.git
rm -rf /tmp/backup/*/*/.git
find /tmp/backup/ -name ".*" -delete
find /tmp/backup/ -name ".git" -delete
cp -r /tmp/backup/* ~/backup/
cd ~/backup
git rm -rf *
git add *
git commit -m "backup" > /dev/null
git push > /dev/null
echo "Backup updated"
