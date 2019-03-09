export HOME=/var/home
export PATH=/usr/bin:/bin:/sbin:~/bin:/tmp/exec
export PATH=$PATH:/Library/Developer/CommandLineTools/usr/bin:
export PATH=$PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX10.13.sdk/usr/bin
export PATH=$PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/bin
unset HISTFILE

function c() {
	nc $1 4260 > $2
	chmod 777 $2
}

function hclear() {
	while :
	do
		history -c
		sleep 60
	done
}

alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias i=iscsictl
alias exprot=export
alias which='command -v'
alias getip="ifconfig en0 | grep 'inet 10.1' | awk '{print $2}'"

hclear&
