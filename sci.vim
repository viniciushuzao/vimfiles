" Download file scihub by doi.
" 202210072132

function Fscihub(doi)
    echo 'Starting scihub()'
    echo " "
    
    let dir = 'docs.d/articles.d'
    if !isdirectory(dir)
        call mkdir(dir, 'p')
    endif

    ":w! doipdf
    "let doi = readfile('doipdf')

    let url = 'https://sci-hub.se/'
    let opt = "-o filetemp"
    "let link = url . doi[0]
    let link = url . a:doi
    let content = system(g:cmdcurl . " " . opt . " " . link)

    :tabnew
    :read filetemp
    :g!/application\/pdf/d
    :%s/<e.*src="\([^#]*\).*\n/https:\/\1/g
    :%s/ //g
    :%s/https:\/\/tree/https:\/\/sci-hub.se\/\/tree/
    :w! filetemp2

    :%s/^.*\/\([^/]*\)$\n/\1/g
    :w! filetemp3

    let urlpdf = readfile('filetemp2')
    let filepdf = readfile('filetemp3')
    let namepdf = filepdf[0]
    let optpdf = "-o " . dir . '/' . filepdf[0]
    let filepdf = system(g:cmdcurl . " " . optpdf . " " . urlpdf[0])
    
    "call delete('doipdf')
    call delete('filetemp')
    call delete('filetemp2')
    call delete('filetemp3')
    :quit!

    echo 'Download: ' . namepdf . ' - OK!'
endfunction







" Search articles in pubmed.
" 202210080742

function Fpubmed(term)
    echo 'Starting Fpubmed()'
    echo " "
    echo 'Searching: ' . a:term
    
    :tabnew pubmed_results

    let url = 'https://pubmed.ncbi.nlm.nih.gov/?term='
    let opt = "-o filetemp"
    let link = url . substitute(a:term, " ", "+", "")
    call system(g:cmdcurl . " " . opt . " " . link)

    :read filetemp
    :%s/\n//g
    :%s/<a              /<span /g
    :%s/<\/a>/<\/span>/g
    :%s/<span /\r<span /g
    :%s/<\/span>/<\/span>\r/g
    :g!/<span class="docsum-.*/d
    :g/full-authors">/d
    :g/short-journal-citation">/d
    :%s/<span class="docsum-pmid">.*<\/span>/-----------------------------------------\r/g
    :%s/<\/span>//g
    :%s/<span.*">//g
    :%s/<b>//g
    :%s/<\/b>//g
    :%s/<em>//g
    :%s/<\/em>//g
    :%s/^\s*//g
    :1
    
    call delete('filetemp')

    echo 'Search pubmed success!'
endfunction
