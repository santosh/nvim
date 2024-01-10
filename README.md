# nvim config

Originally for traditional vim, and now for neovim, this repo contains my vim config files.

## Install

### Linux/Mac

1. Clone the repo in your $HOME.

    git clone github.com/santosh/nvim ~/nvim

2. Enter the repo and run `make install`.

   cd ~/nvim && make install

3. Wait for the installation to finish.

It might take a few minutes to completely install; for example, if your system does not have go toolbelt installed, it will take time until it downloads and compiles it for system wide use.

## What's Inside?

### Plugins

Other than my keybinding and config, I have these plugins working.

1. [vim-plug](https://github.com/junegunn/vim-plug) - The minimalist vim plugin manager.
2. [nerdtree](https://github.com/preservim/nerdtree) - the missing file explorer for vim
3. [nerdcommenter](https://github.com/preservim/nerdcommenter) - for comment manipulation
4. [auto-pairs](https://github.com/jiangmiao/auto-pairs) - the missing plugin to insert or delete brackets, parens, quotes in pair
5. [mru](https://github.com/yegappan/mru) - the missing most recently used menu for vim
6. [vim-surround](https://github.com/tpope/vim-surround) - for manipulating quotes and parenthesis
7. [ultisnips](https://github.com/SirVer/ultisnips) - the best snippet manager available for vim
8. [vim-snippets](https://github.com/honza/vim-snippets) - actual vim snippets definition repo for ultisnips
9. [vim-fugitive](https://github.com/tpope/vim-fugitive) - git wrapper for vim
10. [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - shows added/removed/modified lines
11. [gruvbox](https://github.com/morhetz/gruvbox) - the dark theme I use 
12. [vim-go](https://github.com/fatih/vim-go) - one stop golang plugin
13. [emmet-vim](https://github.com/mattn/emmet-vim) - expands abbreviation into html tags; a must-have for frontend devs.

*Note #1:* vim-snippets is freezed and is updated manually because I have them customized.

*Note #2:* I use FiraCode Mono as monospace font system wide.

### filetype based configs

In `after/ftplugin` directory, you'll find configs related to current filetype based localised settings, overriding the global ones. 

Settings overridden are mosttly one or more of these:

- localised mapping to run the file from within vim
- localised tabwidth and other tab related settings
- localised comment leader for files (nerdcommenter)
