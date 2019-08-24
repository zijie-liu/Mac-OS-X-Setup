

source ~/.zsh_plugins.sh


source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


source /usr/local/opt/zsh-git-prompt/zshrc.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh


fpath=(/usr/local/share/zsh-completions $fpath)

source ~/.antigen.zsh

antigen bundle zsh-users/zsh-completions

antigen apply