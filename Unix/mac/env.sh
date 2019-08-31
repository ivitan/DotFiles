 # your own env, in your .zshrc, source this file

# Fix python crash with vim and YCM plugin
export DYLD_FORCE_FLAT_NAMESPACE=1
export DISABLE_AUTO_TITLE='true'
export INTELLIJ_HOME=/Applications/IntelliJ\ IDEA\ 13\ CE.app/Contents/MacOS/
#PATH=$IDEA_HOME $PATH
export PYTHONIOENCODING=utf-8
export EDITOR='nvim'
export LC_ALL=zh_CN.UTF-8


alias no='node '
alias q='exit'
alias quit='exit'
alias apache='sudo apachectl start'
alias sub='open -a "Sublime Text"'
alias val='valgrind '
alias cdh='cd ~/Hexo'
alias cdl='cd /Users/pegasus/Works/leancloud_demo/; source ./bin/activate'
alias cdj='cd ~/Hexo/themes/jacman'
alias cdb='cd ~/Hexo/source/_posts'
alias cdd='cd ~/Hexo/source/_drafts'
alias cds='cd /Users/pegasus/Program/Sites'
alias cdlib='cd /Users/pegasus/Program/py_test/lib/python2.7/site-packages'
alias cdlib3='cd /Users/pegasus/Program/py3.5_test/lib/python3.5/site-packages'
alias cdp2='cd /Users/pegasus/Program/py_test; source ./bin/activate;'
alias cdw='cd /Users/pegasus/Program/py_test/WeiboApp'
alias cdp='cd /Users/pegasus/Program/py3.5_test; source ./bin/activate;'
alias spy='pyenv activate py_3.5.2'
alias ce='crontab -e '
alias cl='crontab -l '
alias ed='eval $(docker-machine env default)'
alias lo='locate '
alias loc="open http://127.0.0.1"
alias lsn='ls | nl'
alias mp="mitmproxy -p8888"
alias grm='git rebase master'
alias gdc='git diff --cached'
alias gdm='git diff master'
alias gs='git status -s'
alias gmg='git commit -m'
alias gpo='git push origin '
alias gpom='git push origin master'
alias grebase2='git rebase -i HEAD~~'
alias gnew='function _new() { git checkout -b $1; git pull origin $1 }; _new'
alias hexog='hexo g'
alias hs='hexo s'
alias hn='hexo n'
alias hd='sudo hexo d'
alias his='history'
alias exi='exit'
alias ctags='/usr/local/bin/ctags'
alias mc='make clean'
alias ja='java '
alias jc='javac '
alias py='python '
alias py3s='python3.6 -m http.server'
alias ipy='ipython'
alias ci="vi "
alias vim="vi"
alias nvi="nvim "
alias nv="nvim "
alias cl='clang '
alias g++='g++ -Wall '
alias gcc='gcc -Wall '
alias cc='cc -Wall '
alias xo='open '
alias o='open '
alias psp='ps aux | grep python'
alias rm='rmtrash '
alias rmc='rm *.pyc; rm .cache; rm __pycache__'
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias runl='python manage.py runserver'
alias run='python manage.py runserver 0.0.0.0:8000'
alias runs='python manage.py shell'
alias rs='redis-server'
#alias runtest='source /Users/pegasus/Program/py3.5_test/bin/activate;fswatch -o ./*.py  | xargs -n1  ./runtest.sh'
# https://github.com/joh/when-changed，监控文件变动，我修改了下，只监控py和shell文件，用来修改后自动运行单元测试
# alias runtest='source /Users/pegasus/Program/py3.5_test/bin/activate; when-changed -v -r -1 -s ../ ./runtest.sh'
alias runtest="when-changed -v -r -1 -s ./ ./bin/test"
alias testcommand="when-changed -v -r -1 -s ./ ./wnntest.sh"
alias bt="./bin/test"
alias bi="./bin/ipython"
alias bp="./bin/pylint"
alias sqlstart='mysql.server start'
alias refresh_chrome=" osascript -e 'tell application \"Google Chrome\" to tell the active tab of its first window to reload' "
alias flush_watch_refresh_chrome=" when-changed -v -r -1 -s ./ osascript -e 'tell application \"Google Chrome\" to tell the active tab of its first window to reload' "
alias -s h=vi
alias -s c=vi
alias -s cpp=vi
alias -s java=vi
alias -s txt=vi
alias tf='tail -f '
alias prettyjson='python -m json.tool'
alias y='youdao '
alias t='tmux '
alias tl='tmux ls'
alias tat='tmux at -t'
alias ta='tmux at -t'
alias tn='tmux rename -t'
alias tnew='tmux new -s '
alias tpl='tmuxp load '

# youbute
alias download_youbute_mp3='youtube-dl --extract-audio --audio-format mp3 --no-playlist'
alias download_youbute='youtube-dl -f bestvideo+bestaudio '
alias download_youbute_mp3_proxy='youtube-dl --proxy 'socks5://127.0.0.1:1080' --extract-audio --audio-format mp3 '
alias download_youbute_proxy='youtube-dl --proxy 'socks5://127.0.0.1:1080' -f bestvideo+bestaudio '

# for php
# export PATH="$(brew --prefix php70)/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
# alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
# alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
# alias php-fpm.restart='php-fpm.stop && php-fpm.start'


export NVM_DIR="/Users/wnn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#nvm use 0.12.0
alias nvmm='nvm use 8.10.0'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

export GOPATH=$HOME/go    # don't forget to change your path correctly!
# export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
alias updatedb='sudo /usr/libexec/locate.updatedb'

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# init 会每次启动的时候载入虚拟环境
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
