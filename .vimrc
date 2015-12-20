"=============================================================================
"     FileName: .vimrc
"         Desc: MacVim and VIM Config plugin
"       Author: baozi
"        Email: alanerzhao@gmail.com
"     HomePage: http://www.rankber.com
"       Update: 2015.12.20
"=============================================================================

""基础配置:
set nocompatible            ""关闭vi兼容模式
set shortmess=atI          ""启动的时候不显示那个援助索马里儿童的提示
set noignorecase            ""搜索不区分大小写
set hlsearch                ""开启高亮显示结果
set incsearch               ""开启实时搜索功能
set ruler                   ""显标标尺
set number                  ""显示行号
set tabpagemax=9            ""标签最多显示9页
set showtabline=1           ""标签默认显示1页
set history=50              ""保留历史记录
set showcmd                 ""状态栏显示目前所执行的指令
set wildmenu                ""命令行于状态行
set autoread                ""当文件在外部被修改时自动更新该文件

set autoindent              ""自动对齐
set smartindent             ""智能自动缩进
set linespace=4             ""每行4个空格
set shiftwidth=4            ""换行时行间交错4空格
set tabstop=4               ""设置tab键的宽度
set cursorline              ""高亮光标行
set cursorcolumn            ""亮亮光标列
set softtabstop=4           ""退格键删除4空格
set expandtab               ""缩进采用空格 tab用noexpandtab  空格用expandtab
set nospell                 ""拼写检查
set showmatch               ""括号配对情况
set foldmethod=marker
"set foldmethod=indent       " fold based on indent level
set foldenable              ""启动vim打开折叠 nofoldenable不打开
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max

""set matchtime=5           ""显示符合匹配在0.5秒
set cmdheight=1             ""信念楼兰行高
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
set laststatus=2            ""开启状态栏信息
set backupext=.bak          ""备份文件后缀
""换行
set whichwrap+=<,>,h,l,b,s,[,]
set complete=.,w,b,k,t,i    ""自动完成

set wrap                    ""设置自动换行,可以改成nowrp
set numberwidth=4           ""行号宽度
set equalalways             ""分割窗口时保持相等的宽/高
set clipboard+=unnamed      ""共享剪贴板
set ambiwidth=double        ""防止符号无法显示
set list                    ""tab符号
set so=7
""匹配对
set matchpairs=(:),{:},[:],<:>

"自动补全
set completeopt=longest,menu
""默认不支持退格删除
""插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

set helplang=cn             ""中文文档
set nobackup                ""关闭备份
set noswapfile              ""关闭.swp

set nobomb                  ""不使用Unicode bom签名
set fileformat=unix         ""文件格式，默认 ffs=dos,unix
set fileformats=unix,dos,mac

set fileencoding=utf-8      "" encoding编码设置
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

""set noscrollbind          "" 禁止分屏滚动
""set textwidth=80          ""每行80个字符自动换行
""set mouse=a               ""启用鼠标

""关闭提示音
set noerrorbells
set novisualbell
set t_vb=             "关闭提示音

""主题配置 solarized 
set background=dark
set t_Co=256
""语法高亮
syntax on                   "文件侦测
filetype indent on          " 针对不同的文件类型采用不同的缩进格式
filetype plugin on          " 针对不同的文件类型加载对应的插件
"filetype plugin indent on   "不同文件类型加载插件
syntax enable               "语法高亮

"test

" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"粘贴错乱
set pastetoggle=<leader>to

if has('mouse_sgr')
    set ttymouse=sgr
endif"

 " 关闭VIM的时候保存会话，按ctrl+@读取会话
 set sessionoptions=buffers,sesdir,help,tabpages,winsize
 let $VIMSESSION = '~/.session.vim'
 au VimLeave * mks! $VIMSESSION
 map <C-@> :so $VIMSESSION<CR>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

set lazyredraw          " redraw only when we need to.

"test end

colorscheme solarized

 "" 字体设置
set guifont=Monaco:h12
 ""配置颜色solarized  yytextmate Tomorrow-Night-Bright  Tomorrow-Night-Eighties
if has('gui_macvim')
    ""设置mac vim 背景
    set background=light
    colorscheme molokai
    set guifont=Monaco:h12
    set transparency=2
    ""不全屏为set nofu
    set nofu
endif

 ""窗口启动时自动最大化
 ""窗口设置
if has('gui_running')
    set guioptions=mr       "c去掉"
    set guioptions=         ""隐藏全部
    set guioptions+=m       " 隐藏菜单栏
    set guioptions-=T       " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    ""set guioptions+=r       " 隐藏右侧滚动条
    ""set guioptions-=b     " 隐藏底部滚动条
    ""set showtabline-=0    " 隐藏Tab栏
endif

 ""自动改变当前目录
 if has('netbeans_intg')
    set autochdir
 endif
 ""如果为空文件，则自动设置当前目录为桌面
 " lcd ~/Desktop/


"版本检测
if v:version < 700
    echoerr 'This vimrc requires Vim 7 or later.'
    finish
endif

"" 定义 <Leader> 为逗号
let mapleader = ","
let maplocalleader = ","

""快捷键

""insert mode shortcut 输入模式
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

""command line 命令模式
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

""标签翻页快捷键
map <leader>tt :tabnew<cr>
map gn :tabnext<cr>
map gt :tabprevious<cr>
map go :tabonly<cr>
map gc :tabclose<cr>
map gm :tabmove
nmap <C-Tab> :tabnext<cr>

""取消上下左右
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

 "buffer
nnoremap <leader>bn : bnext<cr>
nnoremap <leader>bp : bprevious<cr>
" Close the current buffer
map <leader>bd :bd<cr>
" Close all the buffers
map <leader>ba :1,1000 bd!<cr>
""未保存跳转buffer报错
set hid

""上移下移 command +hj
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z  nmap <D-j> <M-j>

if has("mac") || has("macunix")
 nmap <D-j> <M-j>
 nmap <D-k> <M-k>
 vmap <D-j> <M-j>
 vmap <D-k> <M-k>
endif

""退出快捷键
map Q :x<cr>

""映射esc
:imap jj <Esc>
:imap jk <Esc>
:imap ;; <Esc>

 ""查找替换
map <C-H> :%s/

 "" 取消高亮
nnoremap <leader><space> :nohlsearch<cr>
 
""set spell
map <leader>sn ]s
map <leader>sp [s
nnoremap j gj
nnoremap k gk
""全选
map <leader>a ggVG

""删除windows的^M
map <leader>M :%s/\r//g<cr>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<cr>

" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

""删除所有行未尾空格
nnoremap <F7> :%s/[ \t\r]\+$//g<cr>

"edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>ez :vsp ~/.zshrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetype=php<cr>
nnoremap <leader>5 :set filetype=less<cr>
nnoremap <leader>6 :set filetype=mustache<cr>
nnoremap <leader>7 :set filetype=markdown<cr>

"" 黓认状态栏格式(现在用的是powerline)
hi StatusLine  guifg=#FFFFFF guibg=#393939 gui=none
if version >= 700
 autocmd InsertEnter * hi StatusLine guifg=#E0E0E0 guibg=Grey40 gui=none
 autocmd InsertLeave * hi StatusLine guifg=#FFFFFF guibg=#393939 gui=none
endif
set statusline=\ %F%m%r%h\ [%Y]\ [%{&ff}]\ %w\ \ \ \ \ Encoding:\ %{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\"[BOM]\":\"\")}\ \ \ \ \ Line:\ %l\|%L:%c\ [%p%%-%P]

""插件加载及配置
"doc url: https://github.com/VundleVim/Vundle.Vim"
"set the runtime path to include Vundle and initialize
filetype off "必需有
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                  "插件loader
Plugin 'tpope/vim-markdown'                 "markdown
Plugin 'scrooloose/nerdtree'                "文档目录树
Plugin 'Lokaltog/vim-powerline'             "时间线
Plugin 'tpope/vim-fugitive'                 "git
Plugin 'mbbill/fencview'                    "文件编码
Plugin 'mattn/calendar-vim'                 "年历
Plugin 'altercation/vim-colors-solarized'   "配色
Plugin 'matrix.vim--Yang'                   "黑客帝国
Plugin 'kien/ctrlp.vim'                     "文件查找
Plugin 'scrooloose/nerdcommenter'           "代码注释
Plugin 'syntastic'                          "语法检查
Plugin 'DoxygenToolkit.vim'                 "doxy注释
Plugin 'edsono/vim-matchit'                 "html 匹配
Plugin 'mattn/emmet-vim'                    "zencoding
Plugin 'vimwiki'                            "viki文档
Plugin 'vim-multiple-cursors'               "多行编辑
"Plugin 'tagbar'                            "需要ctags 支持 brew install ctags --HEAD
Plugin 'SirVer/ultisnips'                   " Track the engine.snips引擎
Plugin 'honza/vim-snippets'                 "snippets列表
Plugin 'pangloss/vim-javascript'            "html 嵌套js 时换行syntax问题
Plugin 'othree/html5.vim'                   "支持html5
Plugin 'jelera/vim-javascript-syntax'       "js语法高亮
Plugin 'ap/vim-css-color'                   "颜色支持
Plugin 'mxw/vim-jsx'                        "react jsx
Plugin 'tomasr/molokai'                     "配色
Plugin 'jiangmiao/auto-pairs'               "括号自动补全
Plugin 'ervandew/supertab'                  "自动补全
"暂时用ctrl + n 熟悉

call vundle#end()            " required
filetype plugin indent on    " required

"molokai 配色
let g:molokai_original = 1
let g:rehash256 = 1

" react 
let g:jsx_ext_required = 0

"SirVer/ultisnips and vim-snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"           "跳到下一个光标点
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsExpandTrigger="k"                    "supperTab继承
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"javascript 
au FileType html,javascript let g:javascript_enable_domhtmlcss = 1

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

"powerline相对比较麻烦还要安装特殊字休
"参见https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
"let g:Powerline_symbols = 'fancy'

""markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""设置语言缩进
autocmd FileType scss,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 textwidth=80
autocmd FileType html setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" 将指定文件的换行符转换成 UNIX 格式
autocmd FileType php,javascript,html,css,python,vim,vimwiki set ff=unix

"vim-javascript-syntax 语法高亮有bug
"au FileType javascript call JavaScriptFold()

""插件使用非 Bundle
""pathogen
"call pathogen#infect()
""AutoComplPop 关闭acp自动完成缓存打开变成1
"let g:acp_enableAtStartup = 0

""superTab
let g:SuperTabCrMapping=1 "回车不换行
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
"let g:SuperTabDefaultCompletionType = "<c-n>"

""ctrlP配置
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

""NERDTree快捷键
map <leader>n :NERDTreeToggle<cr>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.pyc$','\.svn$','\.tmp$','\.bak$','\~$']
"NERDTree 自动打开目录树 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"set modifiable
"" ZenCoding
let g:user_emmet_expandabbr_key='<c-o>'
"let g:user_emmet_mode='n'    "only enable normal mode funcs.
"let g:user_emmet_mode='inv'  "enable all funcs, which is equal to
let g:user_emmet_mode='a'    "enable all func in all mode.
"let g:use_zen_complete_tag = 1
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
""日历
map ca :Calendar<cr>

""Fencview 关闭自动检测编码改为手动
let g:fencview_autodetect=0
map <leader>f :FencView<cr>

"DoxygenToolkit.vim
map <leader>d :Dox<cr>
let g:DoxygenToolkit_authorName="zhaoshuai"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t "
let g:DoxygenToolkit_paramTag_pre = "@param\t "
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_versionTag = "@version "

"" syntastic 配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 1
""是否打开错误控制台
let g:syntastic_auto_loc_list = 0 
""打开时就进行检查
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

 " vimwiki基本配置
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/',
\ 'path_html': '~/Dropbox/wiki/html/',
\ 'html_header': '~/Dropbox/template/header.html',
\ 'html_footer': '~/Dropbox/template/footer.html',
\ 'diary_link_count': 5,
\ 'nested_syntaxes': {'Asm': 'asm', 'C': 'c', 'C++': 'cpp','Java': 'java', 'Haskell': 'haskell', 'Lua': 'lua', 'Perl': 'perl', 'Python': 'python', 'PHP': 'php', 'HTML': 'html', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'Automake': 'AUTOMAKE'},}]

let g:vimwiki_use_mouse = 1
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0
" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h4,h5,h6,pre,script,style'
""生成html 快捷键
map <leader>ml <Plug>Vimwiki2HTML
""把所有wiki生成html
map <leader>aml <Plug>VimwikiAll2HTML

""功能函数  自定义函数,通过call来使用
 " 获取当前目录
 func! GetPWD()
    return substitute(getcwd(), "", "", "g")
 endf
 ""ctrl+g插入时间
 imap <C-g> <C-r>=GetDateStamp()<cr>
 " 返回当前时期
 func! GetDateStamp()
    return strftime('%Y-%m-%d')
 endf
 " 全选
 func! SelectAll()
    let s:current = line('.')
    exe "norm gg" . (&slm == "" ? "VG" : "gH\<C-O>G")
 endf
"自动补全html结束标签
func! InsertHtmlTag()
let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
  normal! a>
  let save_cursor = getpos('.')
  let result = matchstr(getline(save_cursor[1]), pat)
  if (search(pat, 'b', save_cursor[1]))
    normal! lyiwf>
    normal! a</
    normal! p
    normal! a>
  endif
  :call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
endf
" 直接查看第一行生效的代码
nmap <Leader>gff :call GotoFirstEffectiveLine()<cr>
" 跳过页头注释，到首行实际代码
func! GotoFirstEffectiveLine()
    let l:c = 0
    while l:c<line("$") && (
                \ getline(l:c) =~ '^\s*$'
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*Comment.*"
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*PreProc$"
                \ )
        let l:c = l:c+1
    endwhile
    exe "normal ".l:c."Gz\<cr>"
    endif
endf

"插入行模式
" vim: set tabstop=4 shiftwidth=4 ft=javascript expandtab: */
func! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endf
nnoremap <silent> <Leader>ml :call AppendModeline()<cr>

 "" 匹配配对的字符
 func! MatchingQuotes()
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap " ""<left>
    inoremap ' ''<left>
 endf
func! RemoveTabs()
    if &shiftwidth == 2
        exec "%s/	/  /g"
    elseif &shiftwidth == 4
        exec "%s/	/    /g"
    elseif &shiftwidth == 6
        exec "%s/	/      /g"
    elseif &shiftwidth == 8
        exec "%s/	/        /g"
    else
        exec "%s/	/ /g"
    end
endf
" vim: set ts=4 sw=4 tw=78 et :
