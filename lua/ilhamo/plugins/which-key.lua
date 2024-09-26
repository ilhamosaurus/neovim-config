return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.timeout = true
    vim.g.timeoutlen = 500
  end,
  opts = {
    
  }
}
