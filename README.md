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

![iTerm screenshot](https://raw.githubusercontent.com/Igor-Ivaniuk/DevEnvSetup/master/Mac/iTerm.png)

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

#### Articles:
https://medium.freecodecamp.org/how-you-can-style-your-terminal-like-medium-freecodecamp-or-any-way-you-want-f499234d48bc

https://medium.com/@rafavinnce/iterm2-zsh-oh-my-zsh-material-design-the-most-power-full-terminal-on-macos-332b1ee364a5