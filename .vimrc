"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
" Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'mileszs/ack.vim'
Plugin 'ervandew/supertab'
Plugin 'sk1418/QFGrep'
" Generic Programming Support 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
" Plugin 'jakedouglas/exuberant-ctags'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'romainl/Apprentice'
Plugin 'w0rp/ale'
Plugin 'vimwiki/vimwiki'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-pencil'
Plugin '907th/vim-auto-save'
call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 

"  YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:UltiSnipsSnippetDirectories=["UltiSnips", "odoosnippets", "pyqtsnippets"]

" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let mapleader=";"
map <C-i> "+p
map <C-c> "+y
noremap <Leader>j :NERDTreeToggle<enter>
noremap <leader>t :Goyo <bar> :TogglePencil <CR>
noremap <Leader>w :cd %:p:h<enter>
noremap <Leader>b :ls<CR>:b<Space>
noremap <Leader>p :CtrlP<CR>:
noremap <Leader>c :ALEToggle<CR>
noremap <Leader>; :bnext<CR>
noremap <Leader>a :bprevious<CR>
noremap <Leader>x :!python %<CR>
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap <C-j> <Esc>/[)}"'\]>}<CR>o
inoremap č ч
inoremap Č Ч
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsListSnippets="<c-l>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsSnippetsDir="~/.vim/snips"

" ale linter settings
" Write this in your vimrc file
" let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'


" let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "2"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files = 1

set nu
set term=ansi
let NERDTreeIgnore = ['\.pyc$']

if has('gui_running')
  set guioptions -=T
  set guifont=Monospace\ 12
  colorscheme codeschool
else
  set t_Co=256
  colorscheme zenburn 
endif

autocmd FileType python setlocal completeopt-=preview
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.rus
    \ set textwidth=120 |
    noremap <Leader>r :set keymap=russian-yawerty
    

au BufNewFile,BufRead *.*
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


let g:vimwiki_list = [
                        \{'path': '~/vimwiki'},
                        \{'path': '~/mdwiki'}
                \]
set langmap=АA,БB,ЦC,ДD,ЕE,ФF,ГG,ХH,ИI,ЙJ,КK,ЛL,МM,НN,ОO,ПP,ЯQ,РR,СS,ТT,УU,ЖV,ВW,ЬX,ЫY,ЗZ,аa,бb,цc,дd,еe,фf,гg,хh,иi,йj,кk,лl,мm,нn,оo,пp,яq,рr,сs,тt,уu,жv,вw,ьx,ыy,зz,Ч: 

function! HelloVim()
    py3 hello.py
endfunc
