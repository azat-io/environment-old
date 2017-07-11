vim:
	cp ./.vimrc ~/
	mkdir ~/.vim
	cp -r ./.vim/** ~/
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
