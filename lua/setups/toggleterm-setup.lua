local toggleterm = require("toggleterm")
local Terminal = require("toggleterm.terminal").Terminal
local map = vim.api.nvim_set_keymap
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "curved"
  }
})

toggleterm.setup({
  shade_terminals = false,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  direction = "float",
  close_on_exit = true,
  clear_env = true,
  shell = vim.o.shell,
  auto_scroll = false,
  float_opts = {
    border = "curved",
    width = 160,
    height = 36,
  },
  responsiveness = {
    horizontal_breakpoint = 135
  }
})

local options = { noremap = true, silent = true }
function _lazygit_toggle()
  lazygit:toggle()
end

map("n", "<space>t", "<CMD>ToggleTerm direction=float<CR>", options)
map("n", "<leader>g", "<CMD>lua _lazygit_toggle()<CR>", options)
map("n", "<space>h", "<CMD>ToggleTerm direction=horizontal<CR>", options)
