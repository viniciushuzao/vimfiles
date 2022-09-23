" File maps VIM.
" 202209222340


"
" Save with 'kk' or 'KK'.
imap kk <Esc>:w<CR><Esc>
imap KK <Esc>:w<CR><Esc>
imap kput <Esc>:call Fwriteput()<CR><Esc>
imap KPUT <Esc>:call Fwriteput()<CR><Esc>


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
