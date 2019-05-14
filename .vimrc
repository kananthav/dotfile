syntax enable
set encoding=UTF-8

" for tmux
set t_Co=256

syntax on
"packadd! onedark.vim
"colorscheme onedark

let mapleader = ","
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'dracula'

:set pastetoggle=<F3>

let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \ 'html' : 1,
    \}

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \   'extends' : 'jsx',
    \  },
  \}

" Ctrl P
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|git'

"Ale
let b:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_style_error = '●' " Less aggressive than the default '>>'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fixers = {
\  '*': ['trim_whitespace', 'remove_trailing_lines'],
\  'javascript': ['eslint'],
\  'css': ['prettier']
\}
"let g:ale_linters_explicit = 1
"let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1 "before ale is loaded
"/Ale

set guifont=DroidSansMono\ Nerd\ Font\ 11
set background=dark
color dracula
:set autoread
set number
set autoindent
"set smartindent
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set incsearch
set hlsearch
set laststatus=2

" Indent
let g:indentLine_char = '¦'

" commentary
autocmd FileType ruby setlocal commentstring=#\ %s
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" NORMAL MAPPING
nmap <Leader>c :tabedit $MYVIMRC<cr>
nmap <Leader>- :sp<cr>
nmap <Leader>\ :vsp<cr>
nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
nmap <Leader>s :BD<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
" END NORMAL MAPPING

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'dracula/vim'
Plugin 'yggdroot/indentline'
Plugin 'ervandew/supertab'
Plugin 'w0rp/ale'
Plugin 'qpkorr/vim-bufkill'
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-jade'
call vundle#end()
