# Configuration Files & Development Setup
This repository details my typical development stack. It is designed for use on remote servers (often without
GUI access) and largely uses terminal based tools. It is current as of 4/19/2023.

The basic stack of tools I use are:
  * `Neovim` for editing.
  * Github Copilot integrated into neovim.
  * `tmux` for terminal multiplexing and session management.
  * `bash` for terminal.

# Bash Setup
The only notable change in the bash setup is that I add the following to my `.inputrc` such that the up-arrow
and down-arrow perform reverse history search given the text currently typed.
```
## arrow up
"\e[A":history-search-backward
## arrow down
"\e[B":history-search-forward
```
