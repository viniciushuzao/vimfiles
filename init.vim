" File to start configs server remote.
" 09/22/2022

function Finit()
    echo 'Hello, starting Finit()'
    let g:ftpserver = input('Server ftp: ') ""
    let g:ftpfilebook = input('DB ftp: ') ""
    let g:ftpuser = input('User ftp: ') ""
    let g:ftppass = inputsecret('Password ftp: ') ""

    let g:cmdcurl = "curl32.exe --insecure"
    let g:urlgit = "https://raw.githubusercontent.com/viniciushuzao/vimfiles/main/"
    echo " "

    call Finclude('set.vim')
    call Finclude('ab.vim')
    call Finclude('map.vim')
    call Finclude('io.vim')
    call Finclude('net.vim')
    call Finclude('med.vim')
endfunction

function Finclude(file)
    let opt = "-s -o filetemp"
    let url = g:giturl . a:file
    let content = system(g:cmdcurl . " " . opt . " " . url)
    source filetemp
    call delete('filetemp')
    echo 'Loading: ' . a:file . ' - OK!'
endfunction

function Fpurge()
    call delete('init.vim')
    call delete('cb')
endfunction

function Fquit()
    echo "Bye! :)"
    call Fpurge()
    quit
endfunction


call Finit()
call FftpGet()
