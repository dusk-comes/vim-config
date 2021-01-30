"~/.vim/autoload/plugins.vim

let s:links = {
            \ 'nerdtree': 'https://github.com/preservim/nerdtree.git',
            \ 'xmledit': 'https://github.com/sukima/xmledit.git',
            \ 'cpp-enhanced-highlighting': 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
            \ }
let s:srch_dir = '~/.vim/pack/plugins/'

function! g:plugins#Download()
    for l:plugin in keys(s:links)
        if empty(glob(s:srch_dir . "*/" . l:plugin))
            let l:target_dir = s:srch_dir . 'opt/' . l:plugin
            silent exe '!git clone -- ' . s:links[l:plugin]
                                        \ l:target_dir
        endif
    endfor
    source $MYVIMRC
    echo "All plugins have been installed"
endfunction
