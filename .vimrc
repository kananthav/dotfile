syntax enable
set encoding=UTF-8

" for tmux
set t_Co=256

syntax on
color dracula

let mapleader = ","
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'onedark'

" NERDTree ignore some files
let NERDTreeIgnore = ['DS_Store', 'node_modules', 'vendor']

let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \ 'html' : 1,
    \}

" Emmet
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \   'extends' : 'jsx',
    \  },
  \}

" Ctrl P
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|git'

" Auto indent after {, [, (
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'none'

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 100

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'false'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

set guifont=DroidSansMono\ Nerd\ Font\ 11
:set pastetoggle=<F3>
:set autoread
set background=dark
set number
set autoindent
set smartindent
set relativenumber
set smarttab
set noswapfile
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set incsearch
set hlsearch
set laststatus=2
set ignorecase
set smartcase
set endofline
set nowrap

" Ale
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
" Sign
" let g:ale_sign_error = '\u2718'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

" Indent
let g:indentLine_char = '¦'

" Commentary
autocmd FileType ruby setlocal commentstring=#\ %s
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}

" NORMAL MAPPING
nmap <Leader>c :tabedit $MYVIMRC<cr>
" Split pane
nmap <Leader>- :sp<cr>
nmap <Leader>\ :vsp<cr>
" Move buffer
nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
" Delete buffer
nmap <Leader>s :BD<cr>
" Clear search highligth
nmap <Leader><space> :nohlsearch<cr>
" NERDTree
nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>
" Move pane
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
" END NORMAL MAPPING

" Ycm
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Move position like use `Alt + Up/Down` in vscode
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Copy to clipboard
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'dracula/vim'
Plugin 'yggdroot/indentline'
Plugin 'qpkorr/vim-bufkill'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'prettier/vim-prettier'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-fugitive'
" Plugin 'ervandew/supertab'
" Plugin 'luochen1990/rainbow'
" Plugin 'soramugi/auto-ctags.vim'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-endwise'
" Plugin 'digitaltoad/vim-jade'
call vundle#end()
