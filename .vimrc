call pathogen#infect()

set nocompatible
filetype off 

colorscheme molokai

" tabbing
"set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set cindent

" vim-go
syntax enable  
filetype plugin on  
set number  
let mapleader=","
let g:go_disable_autoinstall = 0   
let g:go_fmt_command = "goimports" " format with goimports instead of gofmt
let g:go_fmt_autosave = 1 
let g:go_highlight_functions = 1 
let g:go_highlight_methods = 1 
let g:go_highlight_structs = 1 
let g:go_highlight_operators = 1 
let g:go_highlight_build_constraints = 1 

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>a <Plug>(go-referrers)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

" neocomplete
let g:neocomplete#enable_at_startup = 1 

" tagbar
let g:tagbar_type_go = {   
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [ 
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : { 
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : { 
        \ 'ctype' : 't',
        \ 'ntype' : 'n' 
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
set wildchar=<Tab> wildmenu wildmode=full

"set ts=4
"set sts=4
"set cindent
"set cinkeys=0{,0},!^F,o,O,e " default is: 0{,0},0),:,0#,!^F,o,O,e
"set smartindent
"set noautoindent
set softtabstop=4    
set tabstop=4    
set shiftwidth=4    
"set expandtab    
"set nu
"filetype plugin indent on
"syntax enable
