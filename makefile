# Installs a copy of the theme on the folder `~/.oh-my-zsh/themes/`
install:
	cp ./level-up.zsh-theme ~/.oh-my-zsh/themes/level-up.zsh-theme

# Symlinks the theme for easier development
link:
	ln -sF `pwd`/level-up.zsh-theme ~/.oh-my-zsh/themes/
