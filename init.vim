" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存
                
" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting                                                                                                                                 
set encoding=utf-8
" edita setting
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set wildmenu                                                    " コマンドモードの補完
" cursorl setting
set ruler                                                       " カーソルの位置表示
" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set smartindent
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅

"swapfileを生成しない
set noswapfile

"検索したワードをハイライト
set hlsearch

" Open current directory
nmap te :tabedit<Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

nnoremap j gj
nnoremap k gk

if &compatible    
  set nocompatible               " Be iMproved    
endif

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.vim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir 

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" Required:                  
filetype plugin indent on                                   

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif                        

let g:dein#auto_recache = 1

let g:python3_host_prog = expand('/home/masashi/.pyenv/shims/python')
let g:python_host_prog = expand('/usr/bin/python2')

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
map sv :sp<Return>
map ss :vs<Return>
nnoremap <ESC><ESC> :nohlsearch<CR>

