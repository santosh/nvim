clean:
	rm -rf ~/.vim/temp/undo
	rm -rf ~/.vim/temp/backup
	rm -rf ~/.vim/.mru_files

config:
	ln -sf ~/.vim/vimrc ~/.vimrc
	mkdir ~/.vim/temp/undo
	mkdir ~/.vim/temp/backup

install: config
	vim +PlugInstall +qall

update:
	vim +PlugUpdate +qall
