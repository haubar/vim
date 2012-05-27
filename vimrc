
"--------------------------------------------------------------------------- 
" ENCODING SETTINGS " 檔案編碼
"--------------------------------------------------------------------------- 
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
lang messages zh_TW.utf-8

fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun


" 佈景主題
colorscheme torte

" 編輯喜好設定
syntax on        " 語法上色顯示



set tabstop=4    " tab 的字元數
set softtabstop=4
set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=50   " 保留 50 個使用過的指令
set cursorline   " 顯示目前的游標位置
set showcmd      " display incomplete commands
set paste   " 這是防止在做剪貼時位置會不正確
set tabpagemax=30  " 設定tabt頁面的最大值
set autoread       " 當外部檔案被修改時自動重新讀取
set cmdheight=2  " 狀態列的行數，預設一行，建議設成兩行。
set showmatch   " 自動找對應括號
set showmode    " 顯示編輯模式

hi Comment ctermfg=Green  "註解顏色


set laststatus=2
set nu       					"設定行號


set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y   "設定狀態列
highlight StatusLine term=bold,reverse cterm=bold,reverse    "設定狀態列


set guifont=Consolas:h10  " 設定字體樣式及大小。






let g:acp_enableAtStartup=0        " autocomplpop
setlocal spell spelllang=en_gb     " 拚字檢查

"----------------------------------------------------------------------------------
"git 更新套件  bundle 設定
"----------------------------------------------------------------------------------
syntax on
filetype on
set nocompatible " VIM 不使用和 VI 相容的模式



set rtp+=$VIM\bundle\vundle\    "set runtimepath+
call vundle#rc()

Bundle 'gmarik/vundle'


Bundle 'honza/snipmate-snippets'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'The-NERD-tree'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'taglist.vim'
Bundle 'AutoComplPop'
Bundle 'vim-scripts/dbext.vim'
Bundle 'AutoClose'
Bundle 'xml.vim'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'vim-scripts/cscope_macros.vim'
Bundle 'motemen/git-vim'
Bundle 'c9s/fontselector.vim'
Bundle 'c9s/filefind.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'OOP-javascript-indentation'
"Bundle 'JavaScript-syntax'
Bundle 'Javascript-Indentation'
Bundle 'hrp/EnhancedCommentify'
Bundle 'vim-scripts/Source-Explorer-srcexpl.vim'
Bundle 'vim-scripts/trinity.vim'
Bundle 'c9s/gsession.vim'
Bundle 'vim-scripts/surround.vim'
Bundle 'Shougo/neocomplcache'


"語法提示

autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  



"套件啟用

filetype plugin indent on
filetype plugin on


setlocal spell spelllang=en_gb    		" 拚字檢查

let Tlist_File_Fold_Auto_Close=1   				" 讓當前沒有被編輯的文件自動摺疊起來
let Tlist_Ctags_Cmd =$VIM.'\ctags\ctags.exe'




"----------------------------------------------------------
" TagList  -  暫時套用設定
"----------------------------------------------------------
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 0 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 0 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40

"-------------------------------------------------------
" 快速鍵設定
"-------------------------------------------------------



set foldmarker={,}	"
set foldlevel=2
set foldnestmax=1
set foldmethod=expr   " 縮排 Folded 設定,預設沒有縮排

"set foldmarker={,}
"set foldnestmax=3
"set foldmethod=marker
"set foldlevel=0

noremap <C-f> :set foldmethod=marker<CR>  " ctrl+f一下開始折疊模式  (暫時)

noremap <S-f> :set foldmethod=expr<CR>  " shift+f再一下結束折疊模式  (暫時)

noremap <S-v> zx<CR>  "打開目前遊標折疊  (暫時)



map <F2> :vsp<CR> 			" 垂直分割視窗 

map <F3> :tabnew<CR> 			" 開新tab 

nmap  <F8> :TrinityToggleAll<CR>				" Open and close all the three plugins on the same time

map <F9> :BundleInstall!<CR>    				" 更新所有套件

map <F10> :BufExplorer<CR>    				" <F10> Buffer List.

map <F11> <ESC>:NERDTreeToggle<CR> 			" Toggles NERD Tree view 

nnoremap <F12> :TlistToggle<CR>				"設定 F12 為開啟/關閉 Tag List 的快捷鍵:



map <C-n> :cn<CR>    "Ctrl+n 搜尋下一個字串.
map <C-p> :cp<CR>    "Ctrl+p 搜尋上一個字串.

nmap <C-t> :tabnew<CR>      " 開啟新的 tab
nmap <C-w> :tabclose<CR>      " 關閉 tab
imap <C-t><ESC> :tabclose<CR>    " 關閉 tab 

map <C-l> :tabnext<CR>
map <C-h>  :tabprevious<CR>

"--------------------------------------------
" Bash like keys for the command line
"--------------------------------------------

cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>



map <S-F10> :bp <CR>          " <S-F10> 上一個 Buffer File.
map <C-F10> :bn <CR>		  " <C-F10> 下一個 Buffer File.	

