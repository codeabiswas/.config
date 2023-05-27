local M = {
    "nyoom-engineering/oxocarbon.nvim",
     lazy = false, -- make sure we load this during startup if it is your main colorscheme
     priority = 1000, -- make sure to load this before all the other start plugins

}

M.name = "oxocarbon"
M.background = "dark"

function M.config()

  local background_status_ok, _ = pcall(vim.opt.background, M.background)
  if not background_status_ok then
    return
  end

  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
  -- require("github-theme").setup {}
end

return M
