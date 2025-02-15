# .bash_profile

# aliases
alias ll='ls -l'
alias l.='ls -al'

# flush the dns cache
alias flushdns="sudo killall -HUP mDNSResponder"

alias kp="ps auxwww"

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep="grep --color=auto --exclude-dir=\.svn --exclude-dir=\.git"

# git
alias git-top='cd "$(git rev-parse --show-toplevel)"'
alias git-root='f() { local dir=$PWD; while : ; do git rev-parse --is-inside-work-tree &> /dev/null || break; cd "$(git rev-parse --show-toplevel)"; local dir=$PWD; cd ..; done; cd "$dir"; }; f'

alias git-substatus='git status | grep -e "modified content[,)]" -e "untracked content[,)]" | awk "{print \$3}" | xargs -Ipath bash -c "echo path; git -C path status -s"'

export CLICOLOR=1
export EDITOR='vim'

export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend

SED_VERSION=`sed --version 2>&1 | head -1 | cut -f4 -d' '`
if [ "$SED_VERSION" != "4.1.5" ]; then
    export PS1='\[\033[0;35m\]\u\[\033[0;33m\]@\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\] `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\033[37m\]$\[\033[00m\]: '
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# macports path
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# android path
export PATH=$PATH:$HOME/dev/adt/sdk/tools:$HOME/dev/adt/sdk/platform-tools:$HOME/dev/android-ndk-r8e

export PATH=$PATH:/usr/local/bin

export PATH=$PATH:$HOME/bin/gcc-arm-none-eabi/bin

zopa() {
    ssh -p2222 -i ~/.ssh/zopa_id_rsa -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@$1
}

export ANDROID_SDK_ROOT=/home/jeremyh/Android/Sdk
