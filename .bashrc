# for bashrc

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

# http://sandipchitale.blogspot.com/2008/10/reclaim-ctrlc-and-ctrlv-for-familiar.html
# free Ctrl+V for paste
stty lnext ^-

alias ls='ls -gGAFrt --color=auto'
alias dir='ls -gGAh --color=auto --file-type'
alias del='rm'
alias g='cygstart'
alias o='python -ux /cygdrive/c/Windows/o.cmd'
alias rd='rmdir'
alias md='mkdir'
alias copy='cp'
alias move='mv'
alias ren='mv'
alias xmlindent='tidy -xml --indent yes --indent-attributes yes --indent-spaces 2 --quiet yes'
alias grep='grep --color'
alias 7zip="/cygdrive/C/Program\ Files/7-Zip/7zFM"
alias 7z='/cygdrive/C/Program\ Files/7-Zip/7z'
alias perms='find . -type d | xargs chmod 755 && find . -type f | xargs chmod 644'
alias pjs="/cygdrive/c/Workspace/Javascript/phantomjs/phantomjs.exe"

# Python program aliases. Required because ActivePython doesn't parse cygwin paths
alias vis='python C:/gramener/vis/vis.pyc'
alias gramex='python C:/gramener/vis/gramex.py'
alias faker='python C:/gramener/vis/faker.py'
alias jsonpp='python -c "import json,fileinput;print json.dumps(json.loads(str().join(fileinput.input())),sort_keys=True,indent=4)"'
alias markdown='python -c "import markdown, fileinput;print markdown.markdown(str().join(fileinput.input()))"'

ed () {
    /cygdrive/C/Program\ Files/Sublime\ Text\ 2/sublime_text.exe "`cygpath -aw $1`"
}

export PYTHONUNBUFFERED=1
export EDITOR=nano
paint () {
    /c/Program\ Files/Paint.NET/PaintDotNet.exe "`cygpath -aw $1`"
}

# http://cygwin.com/ml/cygwin/2002-06/msg00594.html
# Make directory colours a bit more readable
LS_COLORS="di=01;36"
export LS_COLORS
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
