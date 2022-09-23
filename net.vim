" Funcoes network para vim.
" 202209191202

cab kkget call FftpGet()
cab kkput call FftpPut()
cab kkpur call Fpurge()

function Fduckduckgo(search)
    let url = 'https://lite.duckduckgo.com/lite/?q='
    let term = substitute(a:search, ' ', '+', '')
    "let result = system("curl " . url . term )
    let source = Fcurl('-s', url . term)
    let result = FhtmlToTxt(source)
endfunction

function FhtmlToTxt(source)
    let text = substitute(a:source, '>', '>\n', 'g')
    let end = search("<a*", '', text)
    echo text
endfunction

function Fcurl(opt, url)
    let result = system(g:cmdcurl .  a:opt . " " . a:url)
    return result
endfunction

function FftpPut()
    "let opt = "--netrc-file netrc"
    let server = g:ftpserver . g:ftpfilebook
    let login = g:ftpuser . ':' . g:ftppass
    let opt = "-s -u " . login . " -T cb"
    let conect = Fcurl(opt, server)
    echo 'Put copybook - OK'
endfunction

function FftpGet()
    let server = g:ftpserver . g:ftpfilebook
    let login = g:ftpuser . ':' . g:ftppass
    let opt = "-s -u " . login . " -o cb"
    let conect = Fcurl(opt, server)
    echo 'Get copybook - OK'
    tabedit cb
endfunction
