clean:
	rm -rf ~/.vim/temp/undo
	rm -rf ~/.vim/temp/backup
	rm -rf ~/.vim/.mru_files

config:
	ln -sf ~/.vim/vimrc ~/.vimrc
	mkdir -p ~/.config/nvim
	ln -sf ~/.vim/vimrc ~/.config/nvim/init.vim
	mkdir -p ~/.vim/temp/undo
	mkdir -p ~/.vim/temp/backup

install: config
	vim +PlugInstall +qall

update:
	vim +PlugUpdate +qall
