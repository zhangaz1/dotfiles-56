# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lukerandall"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# https://github.com/lukechilds/zsh-nvm
NVM_LAZY_LOAD=true

plugins=(fasd git brew npm docker gnu-utils colored-man-pages \
          history-substring-search fast-syntax-highlighting kubectl zsh-nvm)

[ -f ~/.env ] && source ~/.env

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' insert-tab false # don't write tabs to prompt

setopt hist_reduce_blanks # remove blanks for commands
setopt interactive_comments # allow interactive comments
setopt transient_rprompt # only show rprompt on last line
unsetopt cdablevars # vars shouldn't expand to directory names

PROMPT='%{$fg_bold[blue]%}%~%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}%B»%b '
export LSCOLORS='ExFxCxDxbxegedabagacad'

# https://github.com/zdharma/fast-syntax-highlighting
FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}path]='fg=white,bold'
FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}path-to-dir]='fg=white,bold'
FAST_HIGHLIGHT_STYLES[${FAST_THEME_NAME}global-alias]='fg=white,bold,bg=none'

zstyle ":chpwd:profiles:${HOME}/GitHub(|/|/*)" profile private
zstyle ":chpwd:profiles:${HOME}/Work(|/|/*)" profile work
[ -f ~/.env_chpwd ] && source ~/.env_chpwd
