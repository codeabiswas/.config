
local M = {
  "catppuccin/nvim",
  name="catppuccin",
  -- Make sure we load this during startup since it is main colorscheme
  lazy=false,
  -- Make sure to load this before all the other start plugins
  priority=1000
}

function M.config()
  vim.cmd.colorscheme "catppuccin"
  require("catppuccin").setup({
    flavour = "mocha"
  })
end

return M
