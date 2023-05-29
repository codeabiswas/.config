local M = {
  "norcalli/nvim-colorizer.lua",
  name="colorizer"
}

function M.config()
  require("colorizer").setup {}
end

return M
