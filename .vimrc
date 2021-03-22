set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 
set tabstop=4 

" 在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim' 
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " 这是必需的 
filetype plugin indent on    " 这是必需的 

set fdm=indent
set shiftwidth=4
set foldlevel=10

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
		" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"搜索的结果放到quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-n> :copen<CR>:cnext<CR>
nmap <C-m> :copen<CR>:cprev<CR>
nmap <C-c> :cclose<CR>


"nerdtree open/close
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

"ack search
let mapleader='\'
nmap <leader><leader>s :Ack -i <C-R>=expand("<cword>")<CR><CR>
set mouse=a
