-- TreeSitter settings
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true
  }
}

-- bufferline
require'bufferline'.setup{}
