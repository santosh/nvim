clean:
	rm -rf ~/.vim/vimundo
	rm -rf ~/.vim/vimswapfiles
	rm -rf ~/.vim/.mru_files

config:
	ln -sf ~/.vim/vimrc ~/.vimrc
	mkdir ~/.vim/vimundo
	mkdir ~/.vim/vimswapfiles

install: config
	vim +PlugInstall +qall

update:
	vim +PlugUpdate +qall
