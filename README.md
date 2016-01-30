# Vim Ranger Explorer

Vim Ranger Explorer enables the [ranger file manager](http://ranger.nongnu.org/) to be used as a file chooser from within Vim.

This plugin is based on [ranger's example code](https://github.com/hut/ranger/blob/58fd4d933c5b7161ad793998b563ccbb69a4daf5/examples/vim_file_chooser.vim).

## Installation

### Install ranger

Ranger can often be installed from the appropriate package manager:

#### OS X ([Home Brew](http://brew.sh)):

```Shell
$ brew install ranger
```

#### Ubuntu:

```Shell
$ apt-get install ranger
```

### Install Vim plugin

Vim Ranger Explorer can be installed with [Vundle](https://github.com/gmarik/Vundle.vim) or
[Pathogen](https://github.com/tpope/vim-pathogen) in the normal way.

### Vundle

Add the following line to your `.vimrc` and run `:PluginInstall`.
```VimL
Plugin 'renyard/vim-ranger-explorer'
```

### Pathogen

Git clone the repo into your bundle directory:
```Shell
$ git clone https://github.com/renyard/vim-ranger-explorer.git ~/.vim/bundle/vim-ranger-explorer
```

## Usage

Use the `:RangerExplorer` command to invoke ranger as a file picker in the current working directory. Rather than using this command directly, you'll probably want to create a key mapping. e.g. To bind Ctrl-O add the following line to your `.vimrc`:

```VimL
noremap <C-o> :RangerExplorer<CR>
```
