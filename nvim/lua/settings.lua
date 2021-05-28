local utils = require('utils')
-- Vim has 3 kinds of options -- global, buffer-local, and window-local
-- in vim, you'd use the set keyword

-- In lua, you'll use one of:
-- vim.api.nvim_set_option() -- for global options
-- vim.api.nvim_buf_set_option() -- for buffer-local options
-- vim.api.nvim-win_set_option() -- for window-local options

-- "meta-accessors" exist - {o, wo, bo}

-- get references to options meta-accessors
-- local o = vim.o -- global
-- local wo = vim.wo -- window
-- local bo = vim.bo -- buffer

local cmd = vim.cmd
local indent = 2
local scrolloff = 5

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'colorscheme gruvbox-material'
cmd 'set noswapfile'
cmd 'set nostartofline'
cmd 'set nojoinspaces'
cmd 'set suffixesadd+=.js,.rb,.jsx' -- TODO: how do you modify settings strings in lua?
utils.opt('o', 'encoding', 'utf-8')
utils.opt('b', 'fileencoding', 'utf-8')
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', scrolloff)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'diffopt', 'vertical')
utils.opt('o', 'showmode', true)
utils.opt('o', 'shell', '/bin/zsh')
utils.opt('o', 'hidden', true)
utils.opt('o', 'lazyredraw', true)
utils.opt('o', 'showmatch', true)
utils.opt('o', 'matchtime', 2)
utils.opt('o', 'mouse', 'a')
utils.opt('o', 'virtualedit', 'block')
utils.opt('o', 'signcolumn', 'yes')

-- Spelling
utils.opt('o', 'spellfile', '~/.config/nvim/dictionary.utf-8.add')
utils.opt('o', 'spelllang', 'en_us')
cmd 'set nospell'

-- White Space Chars
cmd 'set list'
utils.opt('o', 'listchars', 'tab:▸ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·')
utils.opt('o', 'showbreak', '↪')

-- Omnicomplete
utils.opt('o', 'previewheight', 10)
cmd 'set completeopt=menuone,noinsert,noselect'
cmd 'set shortmess+=c'
cmd 'set wildignore=*.o,*.obj,*~'
cmd 'set wildignore+=*vim/backups*'
cmd 'set wildignore+=*sass-cache*'
cmd 'set wildignore+=*DS_Store*'
cmd 'set wildignore+=*.gem'
cmd 'set wildignore+=tmp/**'

-- Splits will be opened below and to the right
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)

-- Wrap to the top when searching hits the end of file
utils.opt('o', 'wrapscan', true)

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

-- nowrap
cmd 'set nowrap'
