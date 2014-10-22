export FK_HOME=~/work/
export _JAVA_OPTIONS='-Xmx1g'
base_name=,
base_dir='../'
for i in `seq 1 10`; do
   name=$name$base_name
   dir=$dir$base_dir
   alias $name="cd $dir"
done
alias M2_REPO='~/.m2/repository'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias c='clear'
alias dca='mysql -uroot -p cache'
alias dcm='mysql -uroot cms'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias logs='cd /var/log/flipkart/promotions/'
alias mvn='mvn -Dthrift.compiler=`which thrift`'
alias msci='mvn clean install -DskipTests'
alias msi='mvn install -DskipTests'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias mysqldump='/usr/local/mysql/bin/mysqldump'
alias ws='cd /Users/kaustubh.priye/work/dev/retail'
alias tomcat='cd /opt/tomcat/'
alias mi='mvn idea:clean idea:idea'
alias mci='mvn clean install'
function gitc(){
  ssh git.corp.flipkart.com "fk-git-create-repo retail/$1"
}

function mvn-init(){
  mvn archetype:generate -DgroupId=flipkart.retail.${1} -DartifactId=$2 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
}
