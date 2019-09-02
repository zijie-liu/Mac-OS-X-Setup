
# xcode show the build time
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

# install cocoapods
sudo gem install cocoapods

#  pod update
pod update

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install cask
brew tap caskroom/versions

# install java jdk 8
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

# apps
brew install git tree rmtrash youtube-dl p7zip unzip wget node


# node JS framework
npm install --unsafe-perm -g @angular/cli

npm install -g react-native-cli

npm install vue

# fonts 

# powerline
cd Downloads
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

#lock dock size
defaults write com.apple.dock size-immutable -bool yes
killall Dock

# unlock dock size
defaults write com.apple.dock size-immutable -bool no
killall Dock


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

# binding sublime text to command line
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl


# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# plugins in .zshrc
plugins=(git colorize pip  brew osx node xcode pod )

# theme
# https://github.com/eendroroy/alien
ZSH_THEME=alien/alien

# nerd fonts
brew tap homebrew/cask-fonts
git clone https://github.com/ryanoasis/nerd-fonts.git

#iterm2 color scheme
https://github.com/mbadolato/iTerm2-Color-Schemes.git

# brew plugin
brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

brew install zsh-history-substring-search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

brew install zsh-completions
fpath=(/usr/local/share/zsh-completions
/usr/local/share/zsh/site-functions
$fpath)

# alien modify
export ALIEN_THEME="red"

export ALIEN_SECTIONS_LEFT=(
  exit
  user
  path
  vcs_branch:async
  vcs_status:async
  vcs_dirty:async
  newline
  ssh
  venv
  prompt
)

export ALIEN_SECTIONS_RIGHT=(
  time
  battery
)