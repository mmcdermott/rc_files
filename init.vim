set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
set termguicolors

call plug#begin()
" The default plugin directory will be as follows:
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

Plug 'junegunn/vim-easy-align'

Plug 'kiyoon/tmuxsend.vim'
Plug 'kiyoon/nvim-tree-remote.nvim'

Plug 'mbbill/undotree'
Plug 'lewis6991/gitsigns.nvim'

Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'nvim-lualine/lualine.nvim'

Plug 'jghauser/mkdir.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'marko-cerovac/material.nvim'

Plug 'github/copilot.vim'

Plug 'lukas-reineke/indent-blankline.nvim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Line num and position
set relativenumber
set number
set ruler
set scrolloff=5 " Number of lines above or bellow the current line

" White space highlighting
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Indents
set smartindent
set smarttab
set smartcase
set autoindent
set expandtab
set shiftwidth=2

" Incremental Searching
set incsearch

" Enable file backup (atomic)
set noswapfile
set backupdir=~/.vimbackup
set backup
set writebackup

" Wrapping
set colorcolumn=111
set textwidth=110
set fo+=t
set nowrap

" Buffer navigation
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bd :Bdelete<cr>

" MISC
imap jj <Esc>
set wildmenu
set wildignore+=*.o,*.so,*.swp,*.zip,*.class,*.pyc
set autowriteall " Automatically writes when switching buffers 
set updatetime=4000

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

filetype plugin indent on
syntax enable

source ~/.config/nvim/config.lua
