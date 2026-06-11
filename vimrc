set nocompatible

set lazyredraw
set ttyfast

" Dumb to check?
if exists("&belloff")
  set belloff=all
else
  set visualbell
endif

set mouse=a

if has("gui_running")
  set guifont=

  if has("unix")
    set guifont=Iosevka\ 13.5
  else
    set guifont=Iosevka:h13.5
  endif

  " Remove custom tabline for guis
  set guioptions-=e

  " Remove menu bar and toolbar
  set guioptions-=m
  set guioptions-=T

  " Remove scrollbars
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
endif

set nowrap
set nomodeline
set nobackup
set nowritebackup
set noswapfile

set autoread

set clipboard^=unnamed,unnamedplus

set backspace=indent,eol,start

set encoding=utf-8

set tabstop  =2
set shiftwidth =2
set shiftround
set softtabstop=2
set smarttab

set expandtab

set autoindent
set copyindent

autocmd FileType make setlocal noexpandtab

set list
set listchars=trail:·,tab:»·

set cursorline
set number
set relativenumber

" To remove tildes on line number column.
autocmd ColorScheme * hi EndOfBuffer ctermfg=bg guifg=bg

" To remove underline on cursor line highlight.
autocmd ColorScheme * hi CursorLine cterm=NONE

syntax on

set termguicolors
set background=dark

" Status Line Custom
" NOTE: Symbols with backslash are only supported between double quotes.
let g:mode_name_map={
  \ 'n'  : 'NORMAL',
  \ 'no' : 'NORMAL OPERATOR PENDING',
  \ 'v'  : 'VISUAL',
  \ 'V'  : 'VISUAL LINE',
  \ "\<C-v>" : 'VISUAL BLOCK',
  \ 's'  : 'SELECT',
  \ 'S'  : 'SELECT LINE',
  \ "\<C-s>" : 'SELECT BLOCK',
  \ 'i'  : 'INSERT',
  \ 'R'  : 'Replace',
  \ 'Rv' : 'VISUAL REPLACE',
  \ 'c'  : 'COMMAND',
  \ 'cv' : 'VIM EX',
  \ 'ce' : 'EX',
  \ 'r'  : 'PROMPT',
  \ 'rm' : 'MORE',
  \ 'r?' : 'CONFIRM',
  \ '!'  : 'SHELL',
  \ 't'  : 'TERMINAL'
  \}

set noshowmode
set laststatus=2

autocmd ColorScheme * hi link User1 CursorLine

set statusline=
set statusline+=%0*\ %{g:mode_name_map[mode()]}\ 
set statusline+=%1*\ %F\%m\%r\ 
set statusline+=%=
set statusline+=%{&ff}\ \|\ 
set statusline+=%{''.(&fenc!=''?&fenc:&enc).''}\ \|
set statusline+=\ %Y\ \|\ 
set statusline+=%p%%\ 
set statusline+=%0*\ %l:%c\ 

let g:default_colorscheme = "my-retrobox"

let g:colorscheme_file = expand($MYVIMDIR . "/.colorscheme")
au ColorScheme * call writefile([g:colors_name], g:colorscheme_file, "")
if filereadable(g:colorscheme_file)
  execute "colorscheme" readfile(g:colorscheme_file, "", 1)[0]
else
  execute "colorscheme" g:default_colorscheme
endif

let g:local_file = expand($MYVIMDIR . "/.local.vim")
if filereadable(g:local_file)
  execute "source" g:local_file
endif
