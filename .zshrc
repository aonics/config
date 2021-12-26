# Load version control information
autoload -Uz compinit && compinit
autoload -Uz vcs_info

precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{cyan}${PWD/#$HOME/~}%f %F{178}${vcs_info_msg_0_}%f >%b '