local utils = require('utils')

-- General
utils.map('n', '<f4>', '<cmd>noh<CR>') --clear highlights

-- Telescope
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
utils.map('n', '<leader>fp', ":lua require'telescope.builtin'.builtin{}<cr>")
utils.map('n', '<leader>fp', ":lua require'config.telescope'.search_nvimfiles()<cr>")

-- Bufferline
utils.map('n', '_', ':BufferLineCyclePrev<CR>', { silent = true })
utils.map('n', '+', ':BufferLineCycleNext<CR>', { silent = true })

-- C-h,j,k,l to move between splits, or split if at bounds
utils.map('n', '<C-h>', ":lua require'utils.windowswap'.split_jump('h')<cr>", { silent = true })
utils.map('n', '<C-j>', ":lua require'utils.windowswap'.split_jump('j')<cr>", { silent = true })
utils.map('n', '<C-k>', ":lua require'utils.windowswap'.split_jump('k')<cr>", { silent = true })
utils.map('n', '<C-l>', ":lua require'utils.windowswap'.split_jump('l')<cr>", { silent = true })

-- Sayonara bindings to cleanly delete buffers without closing window
utils.map('n', ',c', ':Sayonara!<cr>') -- delete buffer, close window
utils.map('n', ',q', ':Sayonara<cr>') -- delete buffer, preserve window
utils.map('n', ',C', ':BufOnly<cr>') -- delete all buffers except current and non-modifiable

-- NvimTree
utils.map('n', '<F1>', ':NvimTreeToggle<cr>', { silent = true })
