local windows = require("windows")
local map = vim.api.nvim_set_keymap

windows.setup({
  autowidth = {
    enable = false,
    filetype = { help = 2 }
  },
  ignore = {
    buftype = { "quickfix" },
    filetype = { "NvimTree", "neo-tree", "undotree", "gundo" }
  },
  animation = {
    enable = true,
    duration = 300,
    fps = 30,
    easing = "in_out_sine"
  }
})

local options = { noremap = true, silent = true }

map("n", "<space>q", "<CMD>WindowsEqualize<CR>", options)
map("n", "<space>z", "<CMD>WindowsMaximize<CR>", options)
