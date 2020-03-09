set nocompatible
filetype off                                                                             
set tabstop=4  
set shiftwidth=4   
set expandtab                                                                            

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim                                                         
call vundle#begin()                                                                       
Plugin 'VundleVim/Vundle.vim'                                                              
Plugin 'fatih/vim-go'                                                                     
Plugin 'posva/vim-vue'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'                                                             
Plugin 'majutsushi/tagbar'                                                             
Plugin 'Valloric/YouCompleteMe'                                                           
Plugin 'SirVer/ultisnips'
Plugin 'mileszs/ack.vim'
Plugin 'dgryski/vim-godef'
call vundle#end()                                                                         
filetype plugin indent on                                                                

" set mapleader
let mapleader=";"                                                     

" tagbar settings
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_autopreview = 1
let g:tagbar_autoclose = 0
let g:tagbar_sort = 0
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

" nerdtree settings
map <leader>n :NERDTreeToggle<CR>                                                         

" tab settings
map <C-j> :tabNext<CR>                                                         
map <C-k> :tabprevious<CR>                                                         
map <C-h> :tabfirst<CR>                                                         
map <C-l> :tablast<CR>                                                         

" vim-go settings
let g:go_fmt_command = "goimports"                                                       
let g:go_highlight_functions = 1                                                         
let g:go_highlight_methods = 1                                                           
let g:go_highlight_structs = 1                                                          
let g:ycm_add_preview_to_completeopt = 1                                                 
let g:ycm_min_num_of_chars_for_completion = 1                                             
let g:ycm_auto_trigger = 1                                                               
let go_def_reuse_buffer =1
let g:go_def_mode = 'guru'
let g:godef_split=3 """左右打开新窗口的时候
let g:godef_same_file_in_same_window=1 """函数在同一个文件中时不需要打开新窗口
let g:go_guru_scope =["github.com/..."]
set completeopt-=preview 

" vue
let g:syntastic_javascript_checkers = ['eslint']

" YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = '<C-Space>'


" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)　　

" vue
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd FileType vue syntax sync fromstart

" ack mappings
map <silent> <F4> :Ack<CR> 

" ctag setting
set tags+=tags
set tags+=./tags,tags,/home/licheng/.tags
