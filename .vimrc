syntax on
set autoindent
set tabstop=4
set smartindent
set softtabstop=4
set cindent shiftwidth=4

set number
set nocompatible              " be iMproved, required
filetype off                  " required

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

map <F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  
""""""""""""""""""""""""""""""
" Tag list (ctags)
" """"""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let Tlist_Auto_Open=1
map <silent> <F9> :TlistToggle<cr>

set nocp  
filetype plugin on  

let g:SuperTabDefaultCompletionType="context"  

"""""""""""""""""""""""""""""""
" pydiction
"""""""""""""""""""""""""""""""
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'

"""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""
map <silent> <F8> :NERDTree<cr>
map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件


"""""""""""""""""""""""""""""""
" NERDTree-Tabs
"""""""""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_console_startup=1       "设置打开vim的时候默认打开目录树
map <leader>n <plug>NERDTreeTabsToggle <CR>         "设置打开目录树的快捷键
