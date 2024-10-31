set termencoding=utf-8
set encoding=utf8
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold

" Remap for rename current word


"call plug#begin('~/.vim/plugged')
"
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"call plug#end()
set clipboard=unnamed  "共享剪切板
if has("autocmd")  
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  "last edit 
endif
set mouse=a
set paste
noremap <F3> :set number!<CR> "set invnumber也可以
set showmatch           "高亮显示匹配括号
set incsearch           "搜索时，输入的词句逐字符高亮
set hlsearch            "搜索高亮显示
set nobackup            "设置不备份
set noswapfile          "禁止生成临时文件
set noundofile          "不创建撤销文件
set nowritebackup  " only in case you don't want a backup file while editing
set autoread            "文件在vim之外修改过，自动重新读入
set autowrite           "设置自动保存
set confirm             "在处理未保存或只读文件的时候，弹出确认
let mapleader = ","
let MYVIMRC="~/.vimrc" 
nnoremap <leader>e :edit $MYVIMRC<cr>
nnoremap <leader>s :source $MYVIMRC<cr>
set hlsearch
