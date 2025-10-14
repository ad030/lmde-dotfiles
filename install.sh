# assumes dotfiles were cloned into home directory as "dotfiles" 
# /home/user/dotfiles or ~/dotfiles
# script does not work otherwise

dotfiles_path="$HOME/dotfiles"
config_path="$HOME/.config"

if [ ! -d $dotfiles_path ]; then
	echo "dotfiles not located in expected location!";
	echo "no directory $dotfiles_path found!";
	exit 1;
fi

create_backup() {
	# if backup file exists already, do not do anything
	if [[ -d "$1.bak" || -f "$1.bak" ]]; then
		echo "$1.bak already exists! will not overwrite";
		return 1;
	fi

	# if file exists, move to backup
	if [[ -d $1 || -f $1 ]]; then
		cp $1 $1.bak;
	fi

	return 0
}

create_symlink() {
	backup=create_backup $2

	# arg 1 is file pointed to
	# arg 2 is location of symlink
	# only create symlink if backup at location is successfully created
	if [[ $backup -eq 0 ]]; then
		ln -sf $1 $2;	
		echo "symlink at $2 created successfully"
	else
		echo "symlink not made at $2"
	fi
}

create_symlink "$dotfiles_path/bashrc" "$HOME/.bashrc"
create_symlink "$dotfiles_path/bash_aliases" "$HOME/.bash_aliases"
create_symlink "$dotfiles_path/bash_profile" "$HOME/.bash_profile"

create_symlink "$dotfiles_path/foot" "$config_path/foot"
create_symlink "$dotfiles_path/sway" "$config_path/sway"
create_symlink "$dotfiles_path/rofi" "$config_path/rofi"
create_symlink "$dotfiles_path/nvim" "$config_path/nvim"

