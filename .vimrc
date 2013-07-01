"---------------------------------------
" Basic 基本設定
"---------------------------------------

"backspaceでインデントや改行を削除できるようにする
set backspace=indent,eol,start

"カーソルの上または下に表示する最小限の行数
set scrolloff=5

"コマンド(の一部)を画面の最下行に表示する
set showcmd

"カーソルが何行目に置かれているかを表示する
set ruler

"ステータス行を常に表示する
set laststatus=2

"insert mode、visual modeで最終行にメッセージを表示する
set showmode

"-------------------------------------------------
"color scheme カラースキーマ設定
"-------------------------------------------------

"Solarized
syntax enable
set background=dark
""let g:solarized_termcolors=256
colorscheme solarized

"-------------------------------------------------
"editor エディター設定
"-------------------------------------------------

"行番号を表示
set number

"閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set showmatch

"------------------------------------------------------
"indent インデント設定
"-----------------------------------------------------

"新しい行を開始したときに、新しい行のインデントを現在と同じにする
set autoindent

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"ファイル中の<Tab>を画面上の何文字として表示するか指定する
set tabstop=4

"キーボードで<Tab>を押したときに挿入される空白の量
set softtabstop=4

"vimがインデントやシフトオペレータ等で自動的に挿入する空白の量
set shiftwidth=4

"insert modeで<tab>を挿入するとき、代わりに適切な数の空白を使う
"(有効：expandtab/無効：noexpandtab)
set expandtab

"行頭の余白内で<Tab>を打ち込むと、shiftwidthの数だけインデントする
set smarttab

"-----------------------------------------------------------
"search 検索設定
"-----------------------------------------------------------

"インクリメンタルにパターン検索を行う
set incsearch

"-----------------------------------------------------------
"completion 補完設定
"-----------------------------------------------------------

"補完候補を表示する
set wildmenu

"補完モード
"             -> 最初のマッチのみを補完する
"full         -> 次のマッチを完全に補完する
"longest      -> 共通する最長の文字列までが補完される
"longest:full -> longestと似ているが、wildmenuが有効ならばそちらを開始する
"list         -> 複数マッチがあるときは、全てのマッチを羅列する
"list:full    -> 複数マッチがあるときは、全てのマッチを網羅し、最初のマッチを補完する
"list:longest -> 複数マッチがあるときは、全てのマッチを羅列し、共通する最長の文字列までが補完される
set wildmode=list:longest,full

"------------------------------------------------
"move 移動設定
"------------------------------------------------

"insert modeでの移動
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
"inoremap <C-h> <Left>
inoremap <C-l> <Right>

"<Esc>をjjにして、normal modeに楽にもどれるようにする
inoremap jj <Esc>

"------------------------------------------------
"Vundle設定
"------------------------------------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""Bundle 'Solarized'
Bundle 'AutoClose'

filetype plugin indent on

