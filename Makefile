DOTFILES := $(shell pwd)
# TODO: https://github.com/scrooloose/syntastic.git
all: shell tmux screen _ruby X mail vimfiles _git
shell:
	ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/bash/bashenv ${HOME}/.bashenv
	ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/bash/bash_profile ${HOME}/.profile
	ln -fs $(DOTFILES)/bash/bash_profile ${HOME}/.bash_profile
	ln -fs $(DOTFILES)/bash/homebrew_profile ${HOME}/.homebrew.profile
	ln -fns $(DOTFILES)/bin/ ${HOME}/bin
	ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	ln -fs $(DOTFILES)/zsh/zlogout ${HOME}/.zlogout
	ln -fs $(DOTFILES)/zsh/zshenv ${HOME}/.zshenv
	ln -fs $(DOTFILES)/friends ${HOME}/.friends
	ln -fs $(DOTFILES)/ack/ackrc ${HOME}/.ackrc
	ln -fns $(DOTFILES)/etc/ ${HOME}/etc
	ln -fs ${DOTFILES}/bash/alias ${HOME}/.alias
screen:
	ln -fs $(DOTFILES)/rc/screenrc ${HOME}/.screenrc
tmux:
	ln -fs $(DOTFILES)/rc/tmux.conf ${HOME}/.tmux.conf
vimfiles:
	ln -fns $(DOTFILES)/vim ${HOME}/.vim
	ln -fs $(DOTFILES)/vim/vimrc ${HOME}/.vimrc
	ln -fs $(DOTFILES)/vim/gvimrc ${HOME}/.gvimrc
X:
	ln -fns $(DOTFILES)/rc/Xresources ${HOME}/.Xresources
	ln -fs $(DOTFILES)/rc/Xresources ${HOME}/.Xdefaults
mail:
	ln -fs $(DOTFILES)/mutt/muttrc ${HOME}/.muttrc
_ruby:
	ln -fs $(DOTFILES)/ruby/irbrc ${HOME}/.irbrc
	ln -fs $(DOTFILES)/ruby/pryrc ${HOME}/.pryrc
	ln -fs $(DOTFILES)/ruby/rdebugrc ${HOME}/.rdebugrc
	ln -fs ${DOTFILES}/ruby/gemrc ${HOME}/.gemrc
	ruby ${DOTFILES}/vim/update_bundles
_git:
	ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/git/gitignore ${HOME}/.gitignore
