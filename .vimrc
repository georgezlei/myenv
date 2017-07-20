execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_exec = 'tidy5'

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/george/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/george/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"javascript syntax
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"au FileType javascript call JavaScriptFold()


syntax on

set autoindent
set cindent
set shiftwidth=2
set expandtab
set tabstop=4
set ruler
set viminfo='10,\"100,:20,%,n~/.viminfo.1
set number
set hlsearch

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

let g:user_zen_mode='a'


filetype plugin on

"GB2312
"set fileencodings=utf-8,gb2312,gbk,gb18030
"set termencoding=utf-8
"set encoding=prc

no ; :
no - $
no _ ^
"no N <C-w><C-w>
"no T <C-w><C-r>
"no D <C-w><C-r>

nnoremap H gT
nnoremap L gt
nnoremap <C-j> 8<Down>
nnoremap <C-k> 8<Up>
nnoremap T :tabnew<CR>
nnoremap M :Vexplore<CR>
"nnoremap M :tabnew<CR>:Explore<CR>
"nnoremap R :!grunt<CR>
nnoremap R :!python manage.py runserver<CR>
imap <TAB> <ESC>
