# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#vim bindings for the command line
bindkey -v

setopt nullglob
# Path to your oh-my-zsh installation.
export ZSH=/Users/alexhutchison/.oh-my-zsh



export PATH="/usr/local/Cellar/python/3.7.5/bin/python3:$PATH"

#Ruby
export PATH="/usr/local/Cellar/ruby/2.5.1/bin:$PATH"

# Yarn
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

#Rust
export PATH="$HOME/.cargo/bin:$PATH"

#RVM

ZSH_THEME="sunaku"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git osx brew common-aliases docker git-flow jira)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias src='source ~/.zshrc'
alias nrd='npm run dev'
alias nrb='npm run build'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias untar='tar -xvzf'
alias yada='yarn add --dev'
alias yup='yarn upgrade'
alias yadev='yarn run build:dev'
alias yacht='SOURCE_MAPS="cheap-module-eval-source-map" yarn wds'
alias pubkey='pbcopy < ~/.ssh/id_rsa.pub'
alias trimbranches="git fetch -p && for branch in `git branch -vv --no-color | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"
alias gffs="git flow feature start"
alias dsa="docker ps -a -q | xargs docker stop"
alias drma="docker ps -a -q | xargs docker rm"
alias drmi="docker images -a -q  | xargs docker rmi "
alias prod="bundle exec ruby ~/code/zeus/server/deploy.rb"
alias pid="cat tmp/pids/server.pid"
alias leads="cd ~/code/zeus/server/app/frontend/src/components/leads"
alias zeus="cd ~/code/zeus/server"
alias migrate="cd ~/code/zeus/server && bin/rails db:migrate RAILS_ENV=development"
alias sshfix="ssh-add -K ~/.ssh/id_rsa"

update() {
	local brew="brew update; brew upgrade;"
	local pip="pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install -U -q"
	sh -c $brew; sudo sh -c $pip
}

mkcd() {
	mkdir $1 && cd $1
}

unsetopt correct_all

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
