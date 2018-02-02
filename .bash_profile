#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

# PS1, prompt command
export PS1="\u@macair \w:"

# Paths
export PATH="/usr/local/bin:/Applications/SWI-Prolog.app/Contents/MacOS:$PATH"

# Editor
export EDITOR=/usr/bin/vim

# Alises
alias l="ls"
alias ll="ls -alt"
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias activate='source venv/bin/activate'
if [ "${uname}" == "Darwin" ]
then
   alias vim="/Applications/MacVim.app/contents/MacOS/MacVim -g"
fi

# Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Env varibles for development

export SECRET_KEY=PIY8G!T@F4lH$aY0eZhRkQK1

# Cowsay + fortune
if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
    fortune | cowsay
fi

# Bash history
HISTCONTROL=ignoreboth
export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dasdachs/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/dasdachs/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dasdachs/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/dasdachs/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Pipenv setting
# Virtual env is in the project root ~PROJECT_ROOT/.venv
export PIPENV_VENV_IN_PROJECT=1
