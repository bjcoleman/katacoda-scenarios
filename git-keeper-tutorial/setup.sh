host=$(hostname)
if [ $host = host01 ]; then
	echo "Setting up the git-keeper server"
	useradd -m keeper
	echo 'keeper ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
	git clone https://github.com/git-keeper/git-keeper.git
	pip3 install git-keeper/git-keeper-core
	pip3 install git-keeper/git-keeper-server
	cp git-keeper/tests/acceptance/files/valid_server.cfg ~keeper/server.cfg
	chown keeper ~keeper/server.cfg
	mkdir /email
	apt-get install -y screen &&
	screen -S gkmail -d -m python3 git-keeper/tests/acceptance/gkserver_base/mysmtpd.py 25 /email &&
	runuser -l keeper -c "screen -S gkserver -d -m gkeepd"
else
	echo "Setting up space for faculty"
	git clone https://github.com/git-keeper/git-keeper.git
	pip3 install cryptography
	pip3 install git-keeper/git-keeper-core
        pip3 install git-keeper/git-keeper-client
fi

