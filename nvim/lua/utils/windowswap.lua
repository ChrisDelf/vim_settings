local M = {}

M.winnr = function()
  return vim.api.nvim_eval('winnr()')
end

-- jump or split if we're at bounds
M.split_jump = function(key)
  -- get current window number
  local currentwin = M.winnr()

  -- try to move
  vim.cmd('wincmd ' .. key)

  -- if we haven't moved, then split vertically or horizontally
  -- depending on direction, then move
  if (currentwin == M.winnr()) then
    if (string.match(key, "[jk]")) then
      vim.cmd('wincmd s')
    else
      vim.cmd('wincmd v')
    end
    vim.cmd('wincmd ' .. key)
  end

end

return M
