syntax on
set autoindent
set tabstop=4
set smartindent
set softtabstop=4
set cindent shiftwidth=4

set number
set nocompatible
colorscheme evening


map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  

""""""""""""""""""""""""""""""
" Tag list (ctags)
" """"""""""""""""""""""""""""""
if MySys() == "windows"                "设定windows系统中ctags程序的位置
let Tlist_Ctags_Cmd = 'ctags'
elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
map <silent> <F9> :TlistToggle<cr>

set nocp  
filetype plugin on  

let g:SuperTabDefaultCompletionType="context"  
