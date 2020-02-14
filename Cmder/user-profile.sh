# use this file to run your own startup commands for msys2 bash'

# To add a new vendor to the path, do something like:
# export PATH=${CMDER_ROOT}/vendor/whatever:${PATH}

# 别名
#打开当前文件夹
alias e.='explorer .'
alias ls='ls --show-control-chars -F --color $*'
alias clear=cls
alias gl='git pull origin $1'
alias glm='git pull origin master'
alias gp='git push origin $1'
alias gpm='git push origin master'
alias cpd='cap production deploy'
alias cpt='cap staging deploy'
alias vitan='hexo clean && hexo g && hexo s'


# Git Commit, Add all and Push — in one step.
function ad() {
    git add . && git commit -m "$*"
}

function gadd() {
    ad "⚔️ ADD: $@"
}

function gcap() {
    git add . && git commit -m "$*" && git push
}

# NEW.
function gnew() {
    gcap "📦 NEW: $@"
}

# IMPROVE.
function gimp() {
    gcap "👌 IMPROVE: $@"
}

# FIX.
function gfix() {
    gcap "🐛 FIX: $@"
}

# RELEASE.
function grlz() {
    gcap "🚀 RELEASE: $@"
}

# DOC.
function gdoc() {
    gcap "📖 DOC: $@"
}

# TEST.
function gtst() {
    gcap "✅ TEST: $@"
}