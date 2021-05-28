local M = {}

-- Add custom search_nvimfiles function
M.search_nvimfiles = function()
  require'telescope.builtin'.find_files({
    prompt_title = "< NVimFiles >",
    cwd = "~/.config/nvim"
  })
end

return M
