-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

local neotree = require("neo-tree")
local map = vim.api.nvim_set_keymap

neotree.setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
  open_files_using_relative_paths = false,
  sort_case_insensitive = false,
  sort_function = nil,
  window = {
    position = "left",
    width = 26,
    mappings = {
      ["P"] = {
        "toggle_preview",
        config = {
          use_float = true,
          use_image_nvim = true,
          title = "Neo-Tree Preview"
        }
      }
    }
  },
  filesystem = {
    filtered_items = {
      visible = false,
      hide_hidden = false,
      hide_gitignored = false,
      hide_dotfiles = false,
    }
  },
  git_status = {
    window = {
      position = "float"
    },
            symbols = {
              added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted = "✖", -- this can only be used in the git_status source
              renamed = "󰁕", -- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored = "",
              unstaged = "󰄱",
              staged = "",
              conflict = "",
            },
  },
  source_selector = {
    winbar = false,
    statusline = true
  }
})

local options = { noremap = true, silent = true }

map("n", "<space>w", "<CMD>Neotree toggle<CR>", options)
map("n", "<space>b", "<CMD>Neotree buffers toggle<CR>", options)
map("n", "<space>g", "<CMD>Neotree git_status float<CR>", options)

local nvimWindow = require("nvim-window")

nvimWindow.setup({
  normal_hl = 'Normal',
  hint_hl = "Bold",
  border = "single",
  render = "float"
})

map("n", "<leader>c", "<CMD>lua require('nvim-window').pick()<CR>", options)
