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


function Fappend(text)
    call append(0, a:text)
endfunction
