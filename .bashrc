alias python="/opt/homebrew/Cellar/python@3.12/3.12.10/bin/python3.12"
alias python3='/usr/bin/python3'
alias pip3='/usr/bin/pip3'
alias pip="/opt/homebrew/Cellar/python@3.12/3.12.10/bin/pip3.12"
#export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#unalias grep
#alias sb="killall -u $(whoami) && sudo reboot"
alias sb="sudo reboot"
alias st="sudo /usr/local/mysql/support-files/mysql.server start"
alias stp="sudo /usr/local/mysql/support-files/mysql.server stop"
alias rsa="cat ~/.ssh/id_rsa.pub|pbcopy"
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias ll='ls -lah --color'
alias gs='git status'
alias gb='git branch'
alias du='du -d 1 -h|sort -h'
alias gl='git pull'
alias hg='history|grep'
alias grv='git remote -v'
alias gsm='git submodule update --init --recursive'
alias gpm='git pull --ff-only origin master:master;git reset --hard master'
alias gtp='git push origin --tags'
alias gpd='git push origin --delete'
alias gc='git clone'
alias gco='git checkout'
alias gcdn='git clone --depth=1 --no-single-branch'
alias gcd='git clone --depth=1'
alias gsed='sed -i "" "10s/master/*/g" .git/config;sed -i "" "10s/master/*/g" .git/config '  #mac sed -i "" or ''
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias git='LANG=en_GB git'
alias sup='git push --set-upstream origin $(git_current_branch)'
alias lg='ls -al|grep'
alias lt='ls --color -lrtl'
alias bi='brew install'
alias bu='brew uninstall'
alias yi='yum install -y'
alias dcu='docker-compose up -d'
alias dcs='docker-compose stop'
alias dp='docker ps'
alias dc='docker'
alias npi='npm install --verbose --no-fund --unsafe-perm'
alias sdev='sshpass -p Coding123456 ssh root@9.134.14.143 -p 36000'
alias dev='sshpass -p rWvbx\*5462TM ssh root@9.135.101.160 -p 36000'
alias dre='docker rm $(sudo docker ps -qf status=exited)' 
alias drc='docker rm $(sudo docker ps -qf status=created)' 
alias volume-clean='docker volume rm $(docker volume ls -qf dangling=true)'
alias dra='docker rm -f $(docker ps -aq); docker network prune -f' 
alias drf='docker rm -f'
alias pg='ps -ef|grep -v grep|grep'
alias tf='tail -f'
alias gca='git commit --amend'
alias gfu='git fetch --unshallow'
alias cvi='ls -a|grep "\.swp\b"|xargs rm -f'
alias mk='mkdir'
alias dcl='docker login -uqiuqi06 -pqq123456Q'
alias sc='cat ~/.ssh/id_rsa.pub|pbcopy'
alias wsc='type ~/.ssh/id_rsa.pub|clip'
alias pup='pip install --upgrade pip'
alias pi='pip install '
alias pu='pip uninstall -y'
alias vhost='sudo vim /etc/hosts'
alias gra="git remote set-url origin "
alias fpg="flutter pub get"
alias fpu="flutter pub update"
alias fpo="flutter pub outdated"
alias fc="flutter clean"
alias fr="flutter run"
alias fpbb='flutter pub run build_runner build'
alias piv="pip3 index versions"

unalias gap > /dev/null 2>&1

# if [ -x "$(command -v gap)" ]; then
# unalias gap
# fi

#$@ must surround with " not '
mkc(){
	mkdir "$@";cd "$@"
}
dsr(){
	docker stop "$@";docker rm "$@"
}
de(){
	docker exec -it "$@" bash
}
pk() { 
	for procid in $(ps -ef | grep "$@"|grep -v grep | awk '{print $2}');do sudo kill -9 $procid; done
}
lk(){
	lsof -i:"$@"|awk '{print $2}'|sed -n '2p'| xargs kill -9
}
ggd(){ 
	for br in $(git branch|grep "$@"); do git branch -D $br;done
}
drps(){
	docker rm $(sudo docker ps -qf status=exited);docker rm $(sudo docker ps -qf status=created)
}
#fdr(){find . -type d -name "$@"|xargs rm -rf}
lsr(){
	ls -a|grep "$@"|xargs rm -rf
}
gac(){
	git add -A ; git commit -m "$@" 
} 
gap(){
        git add -A; git commit -m "$@" ; git push 
}
rbh(){
	git rebase -i HEAD~"$@" 
}
rr(){ 
	recho "$@";history|grep "$@"|grep -v grep|grep -v rr|grep -v recho |tail -1|awk '{for(i=2;i<=NF;++i) printf $i " ";printf "\n" }'|bash
}
recho(){
	echo -n '+'; history|grep "$@"|grep -v grep|grep -v rr |grep -v recho|tail -1|awk '{for(i=2;i<=NF;++i) printf $i " ";printf "\n"}'
}
gro(){
	git remote rm origin; git remote add origin "$@"
}

# if [ -x "$(command -v gap)" ]; then
# unalias gap
# fi

#$nvnumber也可以@ must surround with " not '
mkc(){
	mkdir "$@";cd "$@"
}
dsr(){
	docker stop "$@";docker rm "$@"
}
de(){
	docker exec -it "$@" bash
}
pk() { 
	for procid in $(ps -ef | grep "$@"|grep -v grep | awk '{print $2}'); do kill -9 $procid; done
}
lkp(){
	lsof -i:"$@"|awk '{print $2}'|sed -n '2p'| xargs kill -9
}
ggd(){ 
	for br in $(git branch|grep "$@"); do git branch -D $br;done
}
drps(){
	docker rm $(sudo docker ps -qf status=exited);docker rm $(sudo docker ps -qf status=created)
}
#fdr(){find . -type d -name "$@"|xargs rm -rf}
lsr(){
	ls -a|grep "$@"|xargs rm -rf
}
gac(){
	git add -A ; git commit -m "$@" 
} 
gap(){
        git add -A; git commit -m "$@" ; git push 
}
rbh(){
	git rebase -i HEAD~"$@" 
}
rr(){ 
	recho "$@";history|grep "$@"|grep -v grep|grep -v rr|grep -v recho |tail -1|awk '{for(i=2;i<=NF;++i) printf $i " ";printf "\n" }'|bash
}
recho(){
	echo -n '+'; history|grep "$@"|grep -v grep|grep -v rr |grep -v recho|tail -1|awk '{for(i=2;i<=NF;++i) printf $i " ";printf "\n"}'
}
gro(){
	git remote rm origin; git remote add origin "$@"
}

psg(){
	ps -ef|grep "$@"|grep -v grep 
}

clean_mvn(){
	find ~/.m2/repository -name "*.lastUpdated" -exec rm {} \;
	find ~/.gradle -name "*.lastUpdated" -exec rm {} \; 	
}
  
if [ `uname` = "Darwin" ]; then
	alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code' 
	alias mvnrm='clean_mvn'
	alias xq='xattr -r -d com.apple.quarantine' #xattr -rc
	bd(){
		for i in `ls`; do if [ -d $i ]; then cd $i; "$@"; cd ..; fi; done
	}
elif [[ `uname` =~ "MINGW" || `uname` =~ "MSYS" ]]; then
	echo win
fi


alias cc='sh ~/qq/bash/clear_proxy.sh'
