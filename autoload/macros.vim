" ~/.vim/autoload/macros.vim

function g:macros#InsertName()
    let l:name = fnamemodify(expand('%:p'), ':~')
    call append(line(0), ['', ''])
    call setline(1, '" ' . l:name)
endfunction

function! g:macros#PrettifyStackTrace()
    " Save current position
    let l:save_cursor = getpos(".")
    
    " Process the entire buffer
    %!sed -E 's/\\n/\n/g' | sed -E 's/\\t/  /g' | nl -w3 -s': '
    
    " Restore position
    call setpos('.', l:save_cursor)
endfunction

function! g:macros#PrettifyJson()
    %!jq .
endfunction
