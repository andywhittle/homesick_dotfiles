execute pathogen#infect()

set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!

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

autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

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
autocmd FileType c,cpp,java,javascript,php,ruby,coffee,sass autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

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

let g:rails_projections = {
\    "lib/client/*_.rb": {
\      "command": "client_model",
\      "affinity": "model",
\      "test": "spec/lib/client/%s_spec.rb"
\    }
\  }

let g:syntastic_aggregate_errors = 1

" ctags optimization
set autochdir
set tags=tags;
