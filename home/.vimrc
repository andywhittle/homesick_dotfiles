set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'Align'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'L9'
Bundle 'Shutnik/jshint2.vim'
Bundle 'bufexplorer.zip'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'dsawardekar/ember.vim'
Bundle 'elzr/vim-json'
Bundle 'godlygeek/tabular'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mustache/vim-mode'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on     " required! 
"
" Brief help
"
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed..

" Solarized colors
syntax enable
set background=dark
let g:solarized_termcolors=16
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=1

colorscheme solarized

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch wrap off for everything
set nowrap

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" \ is the leader character
let mapleader = ","

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Move lines up and down
map <C-J> :m +1 <CR>
map <C-K> :m -2 <CR>

" No Help, please
nmap <F1> <Esc>

" Maps autocomplete to tab
imap <Tab> <C-N>

" Display extra whitespace
" set list listchars=tab:禄路,trail:路

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif

" Spell
setglobal spell spelllang=en_gb

" Numbers
set number
set numberwidth=5

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

" case only matters with mixed case expressions
set ignorecase
set smartcase

" trim whitespace
autocmd FileType c,cpp,java,php,ruby,coffee,sass autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" color past 80
set cc=81
hi ColorColumn guibg=#073642

" swap files into tmp
if has("win32") || has("win64")
  set directory=$TMP
else
  set directory=/tmp
end

" offset scrolling by 3 lines
set scrolloff=3

" set thor filetype to ruby
au BufNewFile,BufRead *.thor set filetype=ruby

" set gemfile filetype to ruby
au BufNewFile,BufRead Gemfile set filetype=ruby

" set guard filetype to ruby
au BufNewFile,BufRead Guardfile set filetype=ruby

set shell=/opt/boxen/homebrew/bin/zsh
