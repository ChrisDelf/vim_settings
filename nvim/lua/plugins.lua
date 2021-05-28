return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
        {'jose-elias-alvarez/nvim-lsp-ts-utils'}
      }
  }

  -- LSP and completion
  use {
    'neovim/nvim-lspconfig',
    'kabouzeid/nvim-lspinstall',
    'onsails/lspkind-nvim' -- pictograms on omnicomplete
  }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- File Tree
  use { 'kyazdani42/nvim-web-devicons', 'kyazdani42/nvim-tree.lua' }

  -- Bufferline
  use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- BufOnly to close all modifiable buffers but current one
  use { 'numToStr/BufOnly.nvim' }

  -- Surround
  use { 'blackCauldron7/surround.nvim' }

  -- Sayonara
  use { 'mhinz/vim-sayonara' }

  -- Comment toggling
  use 'b3nj5m1n/kommentary'

end)
