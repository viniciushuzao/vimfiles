" Basic settings VIM.
" 202209222000


" Show title file in superior prompt.
set title


" Global configs.
"set cursorline
set expandtab
set nocompatible
set noswapfile
set number
set ruler
set tabstop=4
set textwidth=0
set wildmenu

colorscheme koehler


" Metodo de encriptacao.
set cryptmethod=blowfish2


" Quebra de linha sem inserir caractere de fim de linha.
set wrap
set wrapmargin=0
set linebreak


" Backspace funcionando.
set backspace=indent,eol,start


"
" Encoding text files.
"
""set fileencoding=utf-8
""set encoding=iso-8859-1       " The encoding DISPLAYED in the terminal.
""set fileencodings=iso-8859-1,utf-8   " The encoding WRITTEN to file.
set encoding=utf-8       " The encoding DISPLAYED in the terminal.
set fileencodings=utf-8   " The encoding WRITTEN to file.


"
" Store backup, undo, and swap files in temp directory.
"set backup
"set backupdir=~/.vim/backups.d
"set backupskip=~/.vim/backups.d/*
"set directory=~/.vim/backups.d
"set writebackup
set nobackup
set nowritebackup
set noundofile
