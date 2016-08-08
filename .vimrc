set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
"
" Python syntax checking
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'cohlin/vim-colorschemes'
Plugin 'jnurmine/Zenburn'
"
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 


"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"   \ set softtabstop=4
"   \ set shiftwidth=4
"   \ set textwidth=79
"   \ set expandtab
"   \ set autoindent
"   \ set fileformat=unix


"------------Start Python PEP 8 stuff----------------
"" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
"
"" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" " Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
" " Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
"
" " Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
"
" " Set the default file encoding to UTF-8:
set encoding=utf-8
"
" " For full syntax highlighting:
let python_highlight_all=1
syntax on
"
" " Keep indentation level from previous line:
autocmd FileType python set autoindent
"
