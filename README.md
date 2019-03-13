# DevEnvSetup
Development environment setup

# Mac
## Tools to install
### Homebrew
https://brew.sh/

The rest is installed through Brew

Brew upgrade all packages
```
brew update && brew upgrade && brew cask upgrade && brew cleanup -s
```

### Java
```
brew cask install java8
brew cask install oracle-jdk
```

### Terminal
Install **iTerm2:** https://www.iterm2.com/index.html

ZSH + Antigen
```
brew install zsh
brew install antigen
```
Install **Nerd Fonts:** https://github.com/ryanoasis/nerd-fonts

Use **Settings for ZSH**: 
[.zshrc](https://raw.githubusercontent.com/Igor-Ivaniuk/DevEnvSetup/master/Mac/.zshrc)
Import **colour scheme** from [itermProfile.json](https://raw.githubusercontent.com/Igor-Ivaniuk/DevEnvSetup/master/Mac/itermProfile.json)
