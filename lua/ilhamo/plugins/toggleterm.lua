return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function ()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
    })
  end
}
