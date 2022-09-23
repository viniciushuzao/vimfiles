" Funcoes input/output para vim.
" 202209191202
"

function Finput(text)
    let curline = getline('.')
    call inputsave()
    let result = input(a:text)
    call inputrestore()
    return result
endfunction

function Fwriteput()
    echo 'Saving...'
    write
    echo 'Put server...'
    call FftpPut()
    call delete('cb')
    echo 'wrote!'
endfunction

function Fpurge()
    call delete('init.vim')
    call delete('cb')
endfunction

function Fappend(text)
    call append(0, a:text)
endfunction

" Copy & paste in Windons System.
function FcopyPasteWin()
    nnoremap yy "*yy
    vnoremap y "*y
    nnoremap p "*p
endfunction
