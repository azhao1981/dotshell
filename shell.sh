# ps alias
alias psg="ps aux | grep -v grep | grep"
# psg xxxx | psk to kill ps
function psk {
	cat $@ | awk '{print $2}' | xargs kill -9
}

function supsk {
  cat $@ | awk '{print $2}' | xargs skill -9
}

# whichccmd psk
function whichcmd {
	which $1 || typeset -f $1
}

# netstat
alias ng="netstat -naptl | grep -v grep | grep"
alias sung="sudo netstat -naptl | grep -v grep | grep"

# docker
alias dc="sudo docker-compose"
