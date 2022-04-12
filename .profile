# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022




# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

_beep () {
      powershell.exe "[console]::beep($1,$2)"
  }

_say()
{
    powershell.exe "(New-Object -ComObject Sapi.spvoice).speak(\"$1\")"
}

_kill_docker()
{
    docker kill $(docker ps -q)
}

_dbr()
{
    docker-compose build "$@" && docker-compose restart "$@"
}


alias  bleep="_beep 1000 800"  # A strong bleep (for profanity)
alias   beep="_beep 2000 300"  # Quick yet noticeable beep
alias   blip="_beep 4000  80"  # A less distracting blip
alias    say="_say"
alias  dkill="_kill_docker"
alias  dlogs="docker-compose logs -f"
alias    dbr="_dbr"
alias pylint='pylint --disable=W1203,W1201'

# set PS1
export PS1="\[\033\]\[[1;31m\]┌[\[\033\]\[[1;36m\]🧙\[\u\]\[\033\]\[[1;31m\]@\[\033\]\[[0;35m\]$WSL_DISTRO_NAME\[\033\]\[[1;31m\]]→\[\033\]\[[1;32m\](\[\w\])
\[\033\]\[[1;31m\]┕━┳\[\033\]\[[1;37m\][\[\t\]⌚]\[\033\]\[[1;33m\]\$(__git_ps1)
\[\033\]\[[1;31m\]  ┗>\[\033\]\[[0;37m\] "
