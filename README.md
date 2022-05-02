# tag.nvim
Jump to tags using Ido.

## Install
Make sure [ido-nvim/ido.nvim](https://github.com/ido-nvim/ido.nvim) is installed.

Use your plugin manager of choice to install this plugin

| Plugin manager                                    | Command                                |
| ------------------------------------------------- | -------------------------------------- |
| [Vim Plug](https://github.com/junegunn/vim-plug)  | `Plug 'ido-nvim/tag.nvim'`             |
| [Vundle](https://github.com/VundleVim/Vundle.vim) | `Plugin 'shoumodip/tag.nvim'`          |
| [Dein](https://github.com/Shougo/dein.vim)        | `call dein#add('ido-nvim/tag.nvim')`   |
| [Minpac](https://github.com/k-takata/minpac)      | `call minpac#add('ido-nvim/tag.nvim')` |

Or use the builtin packages feature

```console
$ cd ~/.config/nvim/pack/plugins/start
$ git clone https://github.com/ido-nvim/tag.nvim
```

## Usage
Generate tags for the current project

```console
$ ctags -R
```

| Command              | Description                                  |
| -------------------- | -------------------------------------------- |
| `:Ido tag.functions` | Jump to a function definition                |
| `:Ido tag.variables` | Jump to a variable definition                |
| `:Ido tag.types`     | Jump to a type definition                    |
| `:Ido tag.enums`     | Jump to an enumeration value definition      |
| `:Ido tag.define`    | Jump to a define, for example `#define` in C |
