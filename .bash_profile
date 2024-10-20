username="davidshivaji"

# silence zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

export DISPLAY=:0

export PS1="\[\033[2;37m\]/\W ${username}\$ \[\033[0m\]"

alias python=python3
alias pip=pip3

alias gcc=/usr/bin/gcc
alias ls=ls' '-tr
alias sl=ls' '-tr
alias o=open' '.
alias atom=atom' '.

3k () {
  open """https://localhost:3000"""
}

8k () {
  open """http://localhost:8000"""
}

nodegi () {
    echo
    """.gitignore
    node_modules/
    package-lock.json
    """ >> .gitignore
}

alias chrome="""Google\ Chrome"""

activate () {
    source /users/$username/$1/bin/activate
}

export -f activate

# opens site-packages folder for "test" virtual env
sitepackages () {
  cd "/users/$username/test/lib/python3.9/site-packages" && open .
}

ka() {
  killall Atom
}

kc() {
  killall "Google Chrome"
}

kvs () {
    # killall "VS Code"
    kill -9 $(pgrep Electron)
}

kf() {
  killall Finder
}

kt() {
  killall Terminal
  open /System/Applications/Utilities/Terminal.app
}

killchrome() {
  killall "Google Chrome"
}

alias chrome='open -a "Google Chrome"'

mkenv () {
    python -m venv $1
    source $1/bin/activate
    pip install --upgrade pip
    pip install ipykernel
    python -m ipykernel install --user --name $1
    pip install jedi==0.17.2
}

search () {
    find . -type d -name "*${1}*" -maxdepth 1
}

openbashprofile () {
	open -a "Visual Studio Code" /users/$username/.bash_profile
}

# gitsize <github repo https link>
# this will return the kB of the repo before you decide to clone it.
gitsize () {
    echo $1 | perl -ne 'print $1 if m!([^/]+/[^/]+?)(?:\.git)?$!' | xargs -I{} curl -s -k https://api.github.com/repos/'{}' | grep size
}

sizes () {
    du -m . | sort -nr | head -n 20
}

lse () {
    output=$(ls)
    returnval=$?
    echo $returnval
}