# locale
export LC_CTYPE="en_US.UTF-8"
# path
PATH=.:$PATH:/usr/local/sbin
export PATH

#color theme
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

#prompt customization
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1='\e[1;33m$(rvm current) \u @ \w $(parse_git_branch)\e[0m\n>>>$ '

#alias[bash]
alias ll='ls -l'
alias la='ls -al'
alias ..='cd ..'

#alias[editor]
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
export SVN_EDITOR=vim

#alias[freewheel]
alias rpm='cd ~/Workspace/freewheel/rpm'
alias ui='cd ~/Workspace/freewheel/ui'
alias search='cd ~/Workspace/freewheel/search'
alias common='cd ~/Workspace/freewheel/rpm/modules/ui-common'
alias oltp='cd ~/Workspace/freewheel/rpm_oltp'
alias rpt='cd ~/Workspace/freewheel/rpt'
alias mrmdb='cd ~/Workspace/freewheel/mrm_db'
alias autotest='cd ~/Workspace/freewheel/regression'
alias devsql='mysql -uroot fwrpm_oltp < '
alias devsqlmrm='mysql -uroot fwmrm_oltp < '
alias testsql='mysql -uroot fwrpm_oltp_test < '
alias testsqlmrm='mysql -uroot fwmrm_oltp_test < '

#alias[jyt]
alias jyt='cd ~/Workspace/chinamobile/jyt-app'

#alias[qguang]
alias qguang='cd ~/Workspace/quguang'

#alias[ruby_rails]
alias sp='rails s -e production'
alias s='rails s'
alias be='bundle exec'
alias cucu='sudo bundle exec cucumber -p common'

#alias[git]
alias gst='git status'
alias gci='git commit'
alias gpull='git pull --rebase'
alias gpush='git push'
alias gdi='git diff --color'
alias gadd='git add'
alias grm='git rm'
alias gco='git checkout'
alias gbr='git branch'
alias glog='git log'
alias gmerge='git merge'
alias gmv='git mv'
alias greset='git reset'
alias gtag='git tag'
alias gclean='git clean'
alias gs='git svn'
alias gsub='git submodule'

alias jsl='jsl -conf ~/.jslconf'

# This loads RVM into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"
