alias ls='ls --color=auto --group-directories-first'

if [ -d "/data/software/bin" ] ; then
    PATH="$PATH:/data/software/bin"
fi


# aliases
alias la='ls -a'
alias ll='ls -l'

alias up='cd ../'

alias wow='git status'
alias such='git'
alias very='git'

# typo help
alias vat='cat'
alias ndoe='node'

_git_prompt() {
  local ref="$(command git symbolic-ref -q HEAD 2>/dev/null)"
  if [ -n "$ref" ]; then
    echo " (${ref#refs/heads/})"
  fi
}
 
_failed_status() {
  [ "$PIPESTATUS" -ne 0 ] && printf "$"
}
 
_success_status() {
  [ "$PIPESTATUS" -eq 0 ] && printf "$"
}
 
#PS1='\[\e[0;31m\]\w\[\e[m\]$(_git_prompt) \[\e[1;31m\]$(_failed_status)\[\e[m\]$(_success_status) '
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(_git_prompt) \[\033[00m\]'
