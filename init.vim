" Should be run with nvim --clean -u /path/to/nvim-lspfs/init.vim
let g:vim_dir = fnameescape(expand("<sfile>:p:h"))
exe "set runtimepath+=".g:vim_dir
exe "set runtimepath+=".g:vim_dir."/after"
exe "set packpath+=".g:vim_dir
exe "set packpath+=".g:vim_dir."/after"
" Not necessary if Neovim's configuration resides in ~/.config/nvim
