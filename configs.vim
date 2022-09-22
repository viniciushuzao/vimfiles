" Basic configs/settings VIM.
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
" Save and Exit in vim.
cab W w
cab Q q
cab WQ wq
cab Wq wq
cab wQ wq


"
" Save with 'kk' or 'KK'.
imap kk <Esc>:w<CR><Esc>
imap KK <Esc>:w<CR><Esc>


"
" Exit vim with 'qq' or 'QQ'.
nmap qq <Esc>:q<CR>
nmap QQ <Esc>:q<CR>


"
" Change keys 'k' and 'j' to improve Up/Down.
nmap k <Esc>gk
nmap j <Esc>gj
vmap k gk
vmap j gj


"
" Change arrows keys Up/Down.
nmap <Up> <Esc>gk
nmap <Down> <Esc>gj
vmap <Up> gk
vmap <Down> gj
imap <Up> <Esc>gka
imap <Down> <Esc>gja
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>

"
" Copy & paste in Windons System.
"nnoremap yy "*yy
"vnoremap y "*y
"nnoremap p "*p

" Movimentacao entre janelas no vim.
nmap <c-tab> gt


" Center text.
cab CE ce
cab Ce ce
cab cE ce


"
" Spellcheck com spell.
"cab spellcheck set spell spelllang=pt_BR <CR><ESC>:setlocal spelllang=pt_br
cab spellcheck set spell spelllang=pt_br


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


" Insere data atual (dia/mes/ano).
iabbr <expr> __date strftime("%x")


"
" Abbreviations.
iabbr __hr -------------------------------------------------
