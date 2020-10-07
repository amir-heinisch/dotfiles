# Dotfiles
My personal configuration files.


## Usage

First you need to clone this repo and checkout all submodules:

```
    git clone https://github.com/amir-heinisch/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    git submodule update --init --recursive
```

Then you can use the INSTALL script or tools like gnu stow to symlink your
dotfiles to the correct locations:

NOTE! You maybe need to create some folders first, like ~/.config, if they
do not exist.

```
    stow --ignore='package.json' -d $HOME/dotfiles -t $HOME vim
```

You can also do it by hand if you want:

```
    ln -s "$HOME/.dotfiles/vim/.vimrc" $HOME/.vimrc
```

NOTE! Most packages rely on the fact that the generic shell config has been
sourced before. (XDG_, aliases, functions, ...)


## Package structure

- Each package (folder) needs to contain a package.json file.
- All other file in a package get symlinked later
- Empty values can be omited.

package.json possible fields:

```
{
	"name": "",					# unique package name
	"description": "", 				# short package description
	"configDependencies": [ "" ]			# all configs this package depends on
	"packages": {
		"pacman": [ "" ]			# we try every pm in given order.
							# if none of them is installed, we use
							# package names of first entry as default
							# with an installed pm on the platform.
	},
	"setup": {
		"manual": [ "" ]			# manual steps to do (before stow)
	},
	"setdown": {
		"manual": [ "" ],			# manual steps to do (after unstow)
		"files": [ "" ]				# files to clean up (backup or delete | interactive or use flag)
	}
}
```
