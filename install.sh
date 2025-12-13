# assumes dotfiles were cloned into home directory as "lmde-dotfiles" 
# /home/user/lmde-dotfiles or ~/lmde-dotfiles or $HOME/lmde-dotfiles
# script does not work otherwise

DOTFILES_PATH="$HOME/lmde-dotfiles"
XDG_CONFIG_HOME="$HOME/.config"

config_directories=(*/)


if [ ! -d $DOTFILES_PATH ]; then
	echo "dotfiles not located in expected location!";
	echo "no directory $DOTFILES_PATH found!";
	exit 1;
fi

create_backup() {
	# ignore symlinks
	if [[ -L $1 ]]; then
		return 1;
	fi

	# if file exists, move to backup
	if [[ -d $1 || -f $1 ]]; then
		mv $1 "$1.bak";
	fi

	return 0
}

create_symlink() {
	# ln -sf $1 $2;	

	backup=$(create_backup $2)

	# arg 1 is file pointed to
	# arg 2 is location of symlink
	# only create symlink if backup at location is successfully created
	if [[ ! -L $2 && $backup -eq 0 ]]; then
		ln -sf $1 $2;	
		echo "symlink to $1 created successfully at $2";
	elif [[ -L $2 ]]; then
		rm $2;
		ln -sf $1 $2;	
		echo "symlink already exists at $2; deleted";
		echo "symlink to $1 created successfully at $2";
	else 
		echo "symlink to $1 not created";
	fi
}

create_symlink "$DOTFILES_PATH/bashrc" "$HOME/.bashrc"
create_symlink "$DOTFILES_PATH/bash_aliases" "$HOME/.bash_aliases"
create_symlink "$DOTFILES_PATH/bash_profile" "$HOME/.bash_profile"

for item in "${config_directories[@]}"; do 
	item="${item%/}"
	# echo $item
	# echo "$DOTFILES_PATH/$item" 
	# echo "$XDG_CONFIG_HOME/$item"
	create_symlink "$DOTFILES_PATH/$item" "$XDG_CONFIG_HOME/$item"
done

