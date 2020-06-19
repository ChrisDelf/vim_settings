call plug#begin('~/.vim/plugged')
" addons
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-markdown'
	Plug 'ap/vim-css-color'
	Plug 'vim-scripts/fountain.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mxw/vim-jsx'
	Plug 'pangloss/vim-javascript'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	"prettier cleans up text"
	"this is the older backup verison"
	Plug 'prettier/vim-prettier', {
  	\ 'do': 'yarn install',
  	\ 'branch': 'release/0.x'
  	\ }
	"main verison"
	Plug 'prettier/vim-prettier', {
  	\ 'do': 'yarn install',
 	 \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }	
call plug#end()



"
map <C-n> :NERDTreeToggle<CR>
" Coc.nvim


" Copying and Pasting in VIM

"vim has a special register which you can copy text to or paste it from.

" registers are small storage places are text are saved.
"
"
"
vnoremap <C-c> "+y
map <C-p> "+P
vnoremap <C-c> "*y :let @+=@*<CR>

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"


" Prettier Configuration

"Change the mappping to run from the default of <Leader>p
nmap <Leader>py <Plug>(Prettier)

"Enable auto formatting of files that have "@format" or "@prettier"
let g:prettier#autoformat = 1

"Allow auto formatting for files without  "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 0

" Toggle the g:prettier#autoformat setting based on whether a config file can be found in the current directory or any parent directory. Note that this will override the g:prettier#autoformat setting!

let g:prettier#autoformat_config_present = 1


"A list containing all config file names to search for when using the g:prettier#autoformat_config_present option. 

"let g:prettier#autoformat_config_files = [...]

"Set the prettier CLI executable path

let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"

"The command :Prettier by default is synchronous but can also be forced async

let g:prettier#exec_cmd_async = 1

"By default parsing errors will open the quickfix but can also be disabled

let g:prettier#quickfix_enabled = 0

"By default selection formatting will be running :PrettierFragment but we can set :PrettierPartial as the default selection formatting by:

let g:prettier#partial_format=1

"By default we auto focus on the quickfix when there are errors but can also be disabled

let g:prettier#quickfix_auto_focus = 0

"To running vim-prettier  not only before saving, but also after changing text
"or leaving insert mode:

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


