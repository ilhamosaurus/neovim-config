return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local subtitute = require("substitute")

    subtitute.setup()

    local keymap = vim.keymap

    keymap.set("n", "s", subtitute.operator, { desc = "Subtitute with motion" })
    keymap.set("n", "ss", subtitute.line, { desc = "Subtitute line" })
    keymap.set("n", "S", subtitute.eol, { desc = "Subtitute to end of line" })
    keymap.set("x", "s", subtitute.visual, { desc = "Subtitute in visual mode"})
  end
}
