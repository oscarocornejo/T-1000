

#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install and Set San Francisco as System Font
ruby -e "$(curl -fsSL https://raw.github.com/wellsriley/YosemiteSanFranciscoFont/master/install)"
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install wget
brew install node
brew install yarn
npm install -g gitjk
# npm install phonegap -g

brew tap phinze/cask
brew install brew-cask
#brew cask search
#brew cask uninstall app

# Core Functionality
echo Install Core Apps
# brew cask install --appdir="/Applications" alfred
# brew cask install --appdir="/Applications" dropbox
# brew cask install --appdir="/Applications" little-snitch
# brew cask install --appdir="~/Applications" transmit
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" slack

## get from App Store
brew cask install --appdir="/Applications" evernote

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" github
# brew cask install --appdir="/Applications" heroku-toolbelt
# brew cask install --appdir="/Applications" pycharm-pro


# Google Slavery
echo Install Google Apps
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive
# brew cask install --appdir="/Applications" chromecast

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications
# Link Cask Apps to Alfred
# brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Security: https://objective-see.com/products.html"