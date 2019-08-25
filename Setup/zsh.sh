#The function will not be run in future, but you can run
#it yourself as follows:
#autoload -Uz zsh-newuser-install
#zsh-newuser-install -f
#
#The code added to ~/.zshrc is marked by the lines
## Lines configured by zsh-newuser-install
## End of lines configured by zsh-newuser-install
#You should not edit anything between these lines if you intend to
#run zsh-newuser-install again.  You may, however, edit any other part
#of the file.

# link
# https://sourabhbajaj.com/mac-setup/iTerm/zsh.html


 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zshrc
plugins=(git  colorize pip  brew osx node xcode pod )

# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# add powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

# add powerlevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# bash_profile alias
alias dir="tree"
alias ll="ls -al"
alias del="rmtrash"
alias xcode="open /Applications/Xcode.app"
alias skype="open /Applications/Skype.app"
#alias chrome="open /Applications/Google\ Chrome.app"
alias wechat="open /Applications/WeChat.app"
alias typora="open /Applications/Typora.app"
alias outlook="open /Applications/Microsoft\ Outlook.app"
alias discord="open /Applications/Discord.app"
alias chrome="open -a 'Google Chrome'"
function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= $1"; }


# powerline fonts
cd Downloads
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

brew install zsh-history-substring-search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

brew install zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
