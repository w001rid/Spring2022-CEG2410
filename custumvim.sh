# specify interpreter
#!/bin/bash

echo "Installing some stuff"

install-package () {
	echo "Installing packages"
	#check for sudo
	cat "user ID running this ascript is #EUID with username $(whoamin)" or ENV var $USER"
	if [[ $EUID -eq 0 ]]
	then	apt-update
        	ap-get install -y \
		git \
		vim \
		sl \
		cowsay \
	fi	fortune \
}

install-colorcheme() {

	echo "Installing vim color scheme..."
	#TODO
	#	output redirection of messages
	#check directory exisitence
	if [[ -d $Home/.vim/colors"]]
			then
			#output folder to already exists
			echo "Directory already exists"
	else
	       echo "Directory does not exist. Creating directory"
		mkdir -p ~/.vim/colors
	
	wget -q -P ~/.vim/colors "https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim"
	echo "colorscheme jellybean" >  !/.vimrc

	echo "Done installinhg vim color scheeme..."
	fi
}

install-package
install-colorscheme
echo "done installing some stuff"
