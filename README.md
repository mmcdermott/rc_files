# Configuration Files & Development Setup
This repository details my typical development stack. It is designed for use on remote servers (often without
GUI access) and largely uses terminal based tools. It is current as of 4/19/2023.

The basic stack of tools I use are:
  * `bash` and [Liquidprompt](https://github.com/nojhan/liquidprompt) for shell
  * `tmux` for terminal multiplexing and session management.
  * `Neovim` for editing.
  * Github Copilot integrated into neovim.

# Bash Setup
## Patched Font Support
I use a [NerdFont](https://www.nerdfonts.com/#home) on the terminal. In particular,
[RobotoMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/RobotoMono.zip).

To install, simply download the zip file and extract the font files inside to your local user font folder
(e.g., `~/.local/share/fonts/` on linux). You then need to configure your shell to use that font by default:

```
mkdir tmp_fonts
cd tmp_fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/RobotoMono.zip
unzip RobotoMono.zip
mv *.ttf ~/.local/share/fonts
cd ..
rm -r tmp_fonts
```

You may need to restart things to get this to work. This step is necessary for some packages in `neovim` and
`tmux` to work properly.

## Neovim AppImage
Add to the very top of your bashrc `alias nvim=~/PATH/TO/nvim.appimage`

## InputRC
The only notable change in the bash setup is that I add the following to my `.inputrc` such that the up-arrow
and down-arrow perform reverse history search given the text currently typed.
```
## arrow up
"\e[A":history-search-backward
## arrow down
"\e[B":history-search-forward
```

 To activate Liquidprompt, install it as normal then just add this to the `.bashrc` or equivalent:
 ```
 # Only load Liquidprompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
 ```

 I don't currently have any liquidprompt configuration options overwritten.

I also add some aliases stored in the `~/.bash_aliases` file.

# Tmux Setup
I use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) for tmux plugins. Install it and enable it
per directions on their source.

The packages I used are all listed in the `.tmux.conf` file.

# Neovim
Neovim packages are managed by Vim-Plug, and the configuration files `init.vim` and `config.lua` both need to
be placed in `~/.config/nvim/`
