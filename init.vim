""" Neovim bootstrapper

let g:neovide_cursor_animation_length=0
autocmd ColorScheme * let g:neovide_title_background_color=synIDattr(synIDtrans(hlID("Normal")), "bg#")
autocmd ColorScheme * let g:neovide_title_text_color=synIDattr(synIDtrans(hlID("Normal")), "fg#")

let vim_directory=expand("<sfile>:p:h")
let vimrc=vim_directory . "/vimrc"

let $MYVIMRC=vimrc
let $MYVIMDIR=vim_directory

let &runtimepath.=',' . vim_directory
execute "source" vimrc
