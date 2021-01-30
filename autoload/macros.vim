" ~/.vim/autoload/macros.vim

function g:macros#InsertName()
    let l:name = fnamemodify(expand('%:p'), ':~')
    call append(line(0), ['', ''])
    call setline(1, '" ' . l:name)
endfunction
