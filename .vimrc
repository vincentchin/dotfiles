execute pathogen#infect()
syntax on
filetype plugin indent on

" syntastic newbie default?
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Open NERDTree on start up
autocmd vimenter * NERDTree

let NERDTreeShowHidden=1
map <C-o> :NERDTreeToggle %<CR>

" Set CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Show number lines
set number
" Show relative line number
set relativenumber
" Smart tab?
set smarttab 

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces 
set shiftwidth=4
set tabstop=4

" Linebreak on 122 characters
set lbr
set tw=122

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Auto reload vim config on settings update"
autocmd bufwritepost .vimrc source $MYVIMRC
colorscheme molokai
