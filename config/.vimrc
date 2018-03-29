runtime! debian.vim
"设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese

"语言设置
set langmenu=zh_CN.UTF-8

"设置行号
set nu
set ruler

"设置状态栏,命令行显示输入命令和vim当前模式
set laststatus=2
set showcmd
set showmode

"代码折叠相关
set foldmethod=syntax "用语法高亮来定义折叠
set foldlevel=100   "启动vim时不要自动折叠代码
set foldcolumn=5    "折叠栏宽度


"设置高亮搜索
set hlsearch
set incsearch

"帮助文档语言设置
set helplang=cn

"设置语法高亮
syntax enable
syntax on

"设置配色方案
colorscheme desert
hi Comment ctermfg=red 

"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"高亮显示匹配的括号
set showmatch

"去掉vi一致性
set nocompatible

"显示空白字符
set list
"设置缩进
"set expandtab
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
set listchars=tab:>-,trail:-,eol:$

"设置一键编译
map <F7> :make<CR>





"设置默认shell
set shell=bash

"设置VIM记录的历史数
set history=100

"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
    set autoread
endif

"设置ambiwidth
set ambiwidth=double

"设置文件类型
set ffs=unix,dos,mac


"设置静音模式
set noerrorbells
set novisualbell
set t_vb=

"不要备份文件
set nobackup
set nowb

" ctags
"启动vim时如果存在tags则自动加载
if exists("tags")
    set tags=./tags
endif
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/lua
set tags+=~/.vim/tags/systags
map <F4> :ctags -R .<CR> 

" supertab
let g:SuperTabDefaultCompletionType="context"

" cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocscopeverbose
nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>
if filereadable("cscope.out")
    cs add cscope.out  
 " else add the database pointed to by environment variable 
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif


" OmniCppComplete
set nocp
filetype on
filetype plugin on
filetype plugin indent on
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" NERDTree,Winmanager
"let g:NERDTree_title="[NERDTree]"
"let g:winManagerWindowLayout="NERDTree"
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction
"
"function! NERDTree_IsValid()
"    return 1
"endfunction

let g:winManagerWindowLayout="FileExplorer|TagList"
nmap wm : WMToggle<CR>

" Taglist
let Tlist_Display_Tag_Scope=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

augroup filetype
	au! BufRead,BufNewFile *.sproto setfiletype sproto
augroup end
