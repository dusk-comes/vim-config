"~/.vim/autoload/plugins.vim

let s:links = {
            \ 'plugins/opt/nerdtree': 'https://github.com/preservim/nerdtree.git',
            \ 'plugins/start/xmledit': 'https://github.com/sukima/xmledit.git',
            \ 'plugins/start/glowing-vim-markdown-preview': 'https://github.com/drewipson/glowing-vim-markdown-preview.git',
            \ 'plugins/opt/cpp-hgl': 'https://github.com/octol/vim-cpp-enhanced-highlight.git',
            \ 'plugins/opt/syntastic': 'https://github.com/vim-syntastic/syntastic.git',
            \ 'lsp/start/vim-lsp-settings': 'https://github.com/mattn/vim-lsp-settings',
            \ 'lsp/start/vim-lsp': 'https://github.com/prabirshrestha/vim-lsp',
            \ 'lsp/start/asynccomplete': 'https://github.com/prabirshrestha/asyncomplete.vim',
            \ 'lsp/start/asynccomplete-lsp': 'https://github.com/prabirshrestha/asyncomplete-lsp.vim'
            \ }
let s:srch_dir = '~/.vim/pack/'

function! g:plugins#Download()
    for l:plugin in keys(s:links)
        system('mkdir -p', s:srch_dir . l:plugin)

        if empty(glob(s:srch_dir . l:plugin))
            let l:target_dir = s:srch_dir . l:plugin
            silent exe '!git clone -- ' . s:links[l:plugin]
                                        \ l:target_dir
        endif
    endfor

    source $MYVIMRC
    echo "All plugins have been installed"
endfunction
