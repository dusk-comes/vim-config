" ~/.vim/vimrc
" ~/.vimrc must include :runtime to proccess the current file

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
filetype plugin indent on

" APPERANCE
set termguicolors
colorscheme murphy
syntax on
set listchars=tab:>-,space:*    " Now :set list showes witespace
set ruler                       " Show line and column number
set formatoptions+=tc           " Wrap text and comments with 
set textwidth=68
autocmd FileType c,cpp set relativenumber number

" SEARCH
set hlsearch                    " Higlight search results
set incsearch                   " Display the string while typing
silent! helptags ALL            " Load help files for all plugins

" SHORTKEY
tnoremap <Esc> <C-\><C-n>       " Exit terminal mode
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
"   NERDTree
nnoremap <leader>tt :NERDTreeToggle<cr>
"   LSP
nnoremap <leader>ld :LspDeclaration<cr>
nnoremap <leader>li :LspImplementation<cr>

" AUTOCOMMANDS
au BufNewFile,BufRead *.tpp, *.ipp set filetype=cpp
au BufNewFile,BufRead *CMakeLists.txt
                                    \ set textwidth=0 |
                                    \ set wrapmargin=0

" LSP
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_highlights_enabled = 1

let g:lsp_log_verbose = 0
let g:lsp_log_file = expand('~/.vim-lsp.log')
