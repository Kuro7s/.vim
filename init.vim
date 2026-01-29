""" Neovim bootstrapper

let vim_directory=expand("<sfile>:p:h")
let vimrc=vim_directory . "/vimrc"

let $MYVIMRC=vimrc
let $MYVIMDIR=vim_directory

let &runtimepath.=',' . vim_directory
execute "source" vimrc
