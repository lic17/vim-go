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
Plugin 'scrooloose/nerdtree'                                                             
Plugin 'Valloric/YouCompleteMe'                                                           
Plugin 'SirVer/ultisnips'
call vundle#end()                                                                         
filetype plugin indent on                                                                

" set mapleader
let mapleader=";"                                                     
map <leader>n :NERDTreeToggle<CR>                                                         

" vim-go settings
let g:go_fmt_command = "goimports"                                                       
let g:go_highlight_functions = 1                                                         
let g:go_highlight_methods = 1                                                           
let g:go_highlight_structs = 1                                                          
let g:ycm_add_preview_to_completeopt = 0                                                 
let g:ycm_min_num_of_chars_for_completion = 1                                             
let g:ycm_auto_trigger = 1                                                               
set completeopt-=preview 

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
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)　　
