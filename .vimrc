set nocompatible
filetype off
let mapleader=","
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
"
Plugin 'gmarik/vundle'


" Status Bar, Themes, & Colors
Plugin 'bling/vim-airline'
set laststatus=2
let g:signify_mapping_toggle_highlight = '<leader>gh'
let g:airline#extensions#tabline#enabled = 1

" Autoformatting
Plugin 'Chiel92/vim-autoformat'
" au BufWrite * :Autoformat

" File Browsing
"   Searching
Plugin 'kien/ctrlp.vim'
let g:ctrlp_extensions = ['tag', 'buffertag', 'undo', 'changes']
"   NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
let NERDTreeIgnore=['\.class', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.o']

" Tag browsing
Plugin 'majutsushi/tagbar'
map <C-t> :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

" Easy tag file generation:
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
set tags=./tags;
let g:easytags_dynamic_files=2
let g:easytags_always_enabled=0
let g:easytags_on_cursorhold=1
let g:easytags_auto_highlight=0
let g:easytags_include_members=1
let g:easytags_python_enabled=1

" Intelligent Undo Recovering
Plugin 'sjl/gundo.vim'
" Undo History
set undofile
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let vimDir = '$HOME/.vim'
  let &runtimepath.=','.vimDir
  let myUndoDir = expand(vimDir . '/.vimundo')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif
set history=10000
set undolevels=1000

" git Integration
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Working with files
Plugin 'kshenoy/vim-signature'

" Autocompletion & Syntax
" Plugin 'Valloric/YouCompleteMe'
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1
"
""will put icons in Vim's gutter on lines that have a diagnostic set.
""Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
"
"
"let g:ycm_complete_in_strings = 1 "default 1
"let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
"let g:ycm_path_to_python_interpreter = '' "default ''
"
"let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
"let g:ycm_server_log_level = 'info' "default info
"
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
"let g:ycm_confirm_extra_conf = 1
"
"let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_key_invoke_completion = '<C-Space>'


nnoremap <C-q> :YcmForceCompileAndDiagnostics <CR>

" Buffers
Plugin 'qpkorr/vim-bufkill'

" Languages:
"   GoLang:
Plugin 'fatih/vim-go'
"   Json:
Plugin 'leshill/vim-json'
"   Javascript:
Plugin 'kern/vim-es7'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
let g:used_javascript_libs = 'react,jquery'
let g:javascript_enable_domhtmlcss = 1
"   JSX:
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0
"   Latex:
let g:tex_flavor='latex'
Plugin 'lervag/vimtex'
let g:vimtex_indent_on_ampersands = 0

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

" Plugin key-mappings.
"
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType javascript setlocal omnifunc=tern#Complete

filetype plugin indent on
syntax enable
