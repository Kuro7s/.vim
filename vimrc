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

    " !!!WARNING!!! Linux font names must be on top of windows'.
    " Linux font names (Does not work properly...).
    set guifont+=Comic\ Mono\ 14
    set guifont+=JetBrains\ Mono\ 14
    " Fallback
    set guifont+=Inconsolata\ 14
    set guifont+=Monospace\ 14

    " Windows font names
    set guifont+=Comic\ Mono:h14
    set guifont+=JetBrains\ Mono\ Semibold:h14
    set guifont+=JetBrains\ Mono:h14
    " Fallback
    set guifont+=Consolas:h14

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
set noshowmode

set autoread

set clipboard^=unnamed,unnamedplus

set backspace=indent,eol,start

set encoding=utf-8

set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4

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
let g:mode_name_map={
    \ 'n'  : 'NORMAL',
    \ 'no' : 'NORMAL OPERATOR PENDING',
    \ 'v'  : 'VISUAL',
    \ 'V'  : 'VISUAL LINE',
    \ '^V' : 'VISUAL BLOCK',
    \ 's'  : 'SELECT',
    \ 'S'  : 'SELECT LINE',
    \ '^S' : 'SELECT BLOCK',
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

colorscheme retrobox

let g:local_file=$MYVIMDIR . "/.local.vim"
if filereadable(expand(g:local_file))
    execute "source" g:local_file
endif
