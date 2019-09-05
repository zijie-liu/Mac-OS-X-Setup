/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# disable .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo 'set completion-ignore-case On' >> ~/.inputrc


brew install cask
brew install brew-cask-completion
brew install bash-completion

brew tap caskroom/versions
brew cask install java
brew cask install java8

brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

brew tap caskroom/fonts

brew install python3

brew install bash
brew install bash-completion@2

brew install ruby 
export PATH="/usr/local/opt/ruby/bin:$PATH"


echo  '[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"' >> ~/.bash_profile

echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile



brew install git tree rmtrash youtube-dl p7zip unzip wget node

brew install yarn

npm install --unsafe-perm -g @angular/cli

npm install -g react-native-cli

npm install vue



# ruby rvm
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/zijie/.rvm/scripts/rvm
rvm install ruby-2.6.1

gem install bundler
bundle install

cd Downloads
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


#lock dock size
defaults write com.apple.dock size-immutable -bool yes
killall Dock

# unlock dock size
defaults write com.apple.dock size-immutable -bool no
killall Dock

# show hidden file
defaults write com.apple.finder AppleShowAllFiles YES

# xcode show the build time
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

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


git rm ./*.DS_Store # remove all .DS_Store from git
echo \.DS_Store >> .gitignore # ignore .DS_Store in future

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi



