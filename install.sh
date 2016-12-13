#!/usr/bin/bash 

installpath=$(pwd)
#install vim if necessary
	echo "Search for vim...."
	if rpm -qa|grep vim;then
		echo "    ==>  You do have vim installed." 
	else 
		echo "    ==> Go to install vim."
		#in normal case ,I prefer to download the source code and compile.
		#wget ftp://ftp.vim.org/pub/vim/unix/vim-8.0.tar.bz2
	
	    #But in HP Inc. ,there are some rules making you not allow to access some sites.
		#This is only for centos .For ubuntu ,it should be "apt-get install vim"
		sudo yum install vim -y
		echo "    ==>  Vim installed!"
	fi
	echo "    ==>  Check Vim color scheme and shortcut."
	diff ~/.vimrc .vimrc > /dev/null
	if [ $? == 0 ];then
		echo "    ==>  Your .vimrc are up to date."
	else
		echo "    ==>  Go to update your .vimrc."
		mv ~/.vimrc ~/.vimrc.org
		cp .vimrc ~
		echo "    ==>  Setup completed!"
	fi

#install cscope if necessary
	echo "Search for cscope...."
	if rpm -qa|grep cscope;then
		echo "    ==>  You do have cscope installed."
	else
		echo "    ==>  Go to install cscope."
		sudo yum install cscope -y
		echo "    ==>  Cscope installed!"
	fi

#install taglist if necessary
	echo "Search for taglist...."
	cd /usr/share/vim/vim??/plugin/
	if [ -e "taglist.vim" ];then
		echo "    ==>  You do have taglist installed."
	else
		echo "    ==>  Go to install taglist."
		sudo cp $installpath/taglist/plugin/taglist.vim .
		sudo cp $installpath/taglist/doc/taglist.txt ../doc/.
		echo "    ==>  Taglist installed!"
	fi 

#install winmanager if necessary
	echo "Search for winmanager...."
	cd /usr/share/vim/vim??/plugin/
	if [ -e "winmanager.vim" ];then
		echo "    ==>  You do have winmanager installed."
	else
		echo "    ==>  Go to install winmanager."
		sudo cp -r $installpath/winmanager/plugin/ .
		sudo cp -r $installpath/winmanager/doc/ ../doc/.
		echo "    ==>  Winmanager installed!"
	fi 
#install vim color scheme
	echo "Check the original C syntax highlight rules...."
	cd /usr/share/vim/vim??/syntax/
	diff c.vim $installpath/c.vim > /dev/null
	if [ $? == 0 ];then
		echo "    ==>  Your c.vim are up to date."
	else
		echo "    ==>  Go to update c.vim."
		sudo mv c.vim c.vim.org
		sudo cp $installpath/c.vim .
		echo "    ==>  Replacement completed!"
	fi
echo "<----------------Completed!---------------->"
