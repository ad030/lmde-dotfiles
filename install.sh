# assumes dotfiles were cloned into home directory as "lmde-dotfiles" 
# /home/user/lmde-dotfiles or ~/lmde-dotfiles or $HOME/lmde-dotfiles
# script does not work otherwise

dotfiles_path="$HOME/lmde-dotfiles"
config_path="$HOME/.config"

config_directories=(*/)


if [ ! -d $dotfiles_path ]; then
	echo "dotfiles not located in expected location!";
	echo "no directory $dotfiles_path found!";
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

create_symlink "$dotfiles_path/bashrc" "$HOME/.bashrc"
create_symlink "$dotfiles_path/bash_aliases" "$HOME/.bash_aliases"
create_symlink "$dotfiles_path/bash_profile" "$HOME/.bash_profile"

for item in "${config_directories[@]}"; do 
	item="${item%/}"
	# echo $item
	# echo "$dotfiles_path/$item" 
	# echo "$config_path/$item"
	create_symlink "$dotfiles_path/$item" "$config_path/$item"
done

