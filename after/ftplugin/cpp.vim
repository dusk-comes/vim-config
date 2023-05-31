" ~/.vim/after/ftplugin/cpp.vim

runtime ./c.vim 

" STATIC CODE ANALYZING syntastic
let s:syntastic_enabled = 0
if s:syntastic_enabled
    packadd syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_enable_signs = 1
    let g:syntastic_enable_highlighting = 1
    let g:syntastic_cpp_checkers = ["clang_tidy"]
    let g:syntastic_cpp_clang_tidy_exec = "/usr/bin/clang-tidy-15"
    let g:syntastic_cpp_clang_tidy_args = "-p ."
    let g:syntastic_cpp_clang_tidy_post_args = "-checks=-*,readability-*"
endif
