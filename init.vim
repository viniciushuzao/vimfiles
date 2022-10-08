" File to start configs server remote.
" 09/22/2022

echo 'Hello, starting kk'

let g:ftpserver = input('Server ftp: ') ""
let g:ftpfilebook = input('DB ftp: ') ""
let g:ftpuser = input('User ftp: ') ""
let g:ftppass = inputsecret('Password ftp: ') ""

let g:cmdcurl = "curl32.exe --insecure"
let g:urlgit = "https://raw.githubusercontent.com/viniciushuzao/vimfiles/main/"

echo " "

function Finclude(file)
    let opt = "-s -o filetemp"
    let url = g:urlgit . a:file
    let content = system(g:cmdcurl . " " . opt . " " . url)
    source filetemp
    call delete('filetemp')
    echo 'Loading: ' . a:file . ' - OK!'
endfunction

call Finclude('set.vim')
call Finclude('ab.vim')
call Finclude('map.vim')
call Finclude('io.vim')
call Finclude('net.vim')
call Finclude('med.vim')
call Finclude('sci.vim')
