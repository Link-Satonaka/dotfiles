rsync -avhP --chown=Link:Link --exclude-from="exclude" ./home/Link/ /home/Link/
host="$(hostnamectl status --static)"
if [ -d ./$host ]; then
	sudo rsync -avhP --chown=root:root --exclude="home" ./$host/ /
	rsync -avhP --chown=Link:Link ./$host/home/Link/ /home/Link/
fi
