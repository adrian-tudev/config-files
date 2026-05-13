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
export PATH="$PATH:/home/willy/bin/"
# opencode
export PATH=/home/willy/.opencode/bin:$PATH
# rebar (erlang tool)
export PATH=/home/willy/.cache/rebar3/bin:$PATH

# doom
export PATH=/home/willy/.config/emacs/bin:$PATH

# qt?
export QT_QPA_PLATFORM=xcb

export VISUAL=nvim
export EDITOR="$VISUAL"

# ====
# ANKI
# ====

#export QT_QPA_PLATFORM=wayland
export ANKI_WAYLAND=1

# =======
# ALIASES
# =======

# tools
alias vim="nvim"
alias emacs="emacsclient -c -a 'emacs'"
alias ts="tasker"

# git stuff
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gc="git commit"
alias gce="git checkout"
alias gb="git branch"

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/willy/.opam/opam-init/init.sh' && . '/home/willy/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration
. "$HOME/.cargo/env"

export QSYS_ROOTDIR="/home/willy/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/25.1/quartus/sopc_builder/bin"
eval "$(zoxide init bash)"
