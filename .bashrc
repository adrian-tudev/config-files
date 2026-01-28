#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -ll'
alias grep='grep --color=auto'

# ===========
# BASH PROMPT
# ===========

PS1='[\u@\h \W]\$ '
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Created by `pipx` on 2025-12-21 22:52:52
export PATH="$PATH:/home/willy/.local/bin"
export PATH="$PATH:/home/willy/uni/tda384/software/tsim-0.84/world/bin/"

export VISUAL=nvim
export EDITOR="$VISUAL"

# =======
# ALIASES
# =======

# tools
alias vim="nvim"
alias ts="tasker"

# git stuff
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gc="git commit"
alias gb="git branch"

# folder shortcuts
alias conc="cd ~/uni/tda384/"

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/willy/.opam/opam-init/init.sh' && . '/home/willy/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration
. "$HOME/.cargo/env"
