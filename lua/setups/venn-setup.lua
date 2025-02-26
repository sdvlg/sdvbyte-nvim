local map = vim.api.nvim_set_keymap
local buffer = vim.api.nvim_buf_set_keymap
local cmd = vim.cmd

function _G.Toggle_venn()
  local venn_enabled = vim.inspect(vim.b.venn_enabled)
  if venn_enabled == "nil" then
    vim.b.venn_enabled = true
    cmd [[setlocal ve=all]]
    -- draw a line on HJKL keystokes
    buffer(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
    buffer(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
    buffer(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
    buffer(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
    -- draw a box by pressing "f" with visual selection
    buffer(0, "v", "f", ":VBox<CR>", { noremap = true })
  else
    cmd [[setlocal ve=]]
    buffer(0, "n", "J")
    buffer(0, "n", "K")
    buffer(0, "n", "L")
    buffer(0, "n", "H")
    buffer(0, "v", "f")
    vim.b.venn_enabled = nil
  end
end

local options = { noremap = true }

map('n', '<leader>v', ":lua Toggle_venn()<CR>", options)
