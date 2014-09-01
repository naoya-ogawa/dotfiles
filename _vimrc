"######ショートカット設定######
nnoremap <f2> :NERDTreeToggle<CR>
imap <c-j> <esc>

"#####golangの設定#######
if $GOROOT != ''
    "gocode
    set rtp+=$GOROOT/misc/vim
   "golint
    exe "set rtp+=" . globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
endif

set lines=35
set columns=150

"######表示設定#######
set number "行番号表示
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set smartindent "オートインデント

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"#####検索設定######
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで言ったら最初に戻る

"# neobundle
set nocompatible
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle'))
endif 

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'

NeoBundle 'scrooloose/nerdtree'
filetype plugin indent on
