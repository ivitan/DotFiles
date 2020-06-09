Import-Module Get-ChildItemColor

$env:PYTHONIOENCODING="utf-8"
# Remove curl alias
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
# Remove-Item alias:ls -force
Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function GitLogPretty {
  git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all
}

function PrettyLS {
  colorls --light -A
}

function GitStat { git status }

function GoBack { Set-Location .. }

function GetMyIp { curl -L tool.lu/ip }
function UpdateScoop { scoop update; scoop update * }

function Vscode { code .}

function HexoServe { hexo clean; hexo g; hexo s}

# Git Commit, Add all and Push — in one step.
function Ad{ git add . ; git commit -m Write-Host "$*" }
function GitAdd{ GitAd Write-Host "⚡ ADD: $@" }
function GitCap{ git add . ; git commit -m "$*" ; git push }

# NEW.
function GitNew{ GitCap Write-Host "📦 NEW: $@" }

# IMPROVE.
function GitImp{ GitCap Write-Host "👌 IMPROVE: $@" }

# FIX.
function GitFix{ GitCap Write-Host "🐛 FIX: $@" }

# RELEASE.
function GitRlz{ GitCap Write-Host "🚀 RELEASE: $@" }

# DOC.
function GitDoc{ GitCap Write-Host "📖 DOC: $@" }

# TEST.
function GitTst{ GitCap Write-Host "✅ TEST: $@" }

Import-Module posh-git
Import-Module oh-my-posh
# $DefaultUser = 'spenc'

# Setup other alias
Set-Alias open Invoke-Item
Set-Alias .. GoBack
Set-Alias glola GitLogPretty
Set-Alias gst GitStat
Set-Alias myip GetMyIp
Set-Alias pls PrettyLS
Set-Alias suu UpdateScoop
Set-Alias vs Vscode
Set-Alias vitan HexoServe
Set-Alias GitAd ad
Set-Alias gadd GitAdd
Set-Alias gcap GitCap
Set-Alias gnew GitNew
Set-Alias gimp GitImp
Set-Alias gfix GitFix
Set-Alias grlz grlz
Set-Alias gdoc GitDoc
Set-Alias gtst GitTst

# Set theme
Set-Theme Paradox

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
