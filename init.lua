-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

local cmd = vim.cmd
local g = vim.g
local map = vim.api.nvim_set_keymap

require "packadd"

-- setups

require "setups/coc-setup"
require "setups/neotree-setup"
require "setups/treesitter-setup"
require "setups/windows-setup"
require "setups/toggleterm-setup"
require "setups/mini-setup"
require "setups/lualine-setup"
require "setups/venn-setup"
-- require "setups/codesnap-setup"

-- settings

cmd [[
  colorscheme spaceduck
  autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
  autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
]]

require "setting"

g.python3_host_prog = "$HOME/.pyenv/versions/3.13.2/bin/python"
g.python_host_prog = "$HOME/.pyenv/versions/2.7.18/bin/python"
g.ruby_host_prog = "/usr/bin/ruby"
g.perl_host_prog = "/opt/homebrew/bin/perl"


local options = { noremap = true, silent = true }

-- vsplit
map("n", "<leader>d", "<CMD>vs<CR>", options)
-- split
map("n", "<leader>v", "<CMD>sp<CR>", options)
-- explore
map("n", "<leader>e", "<CMD>Exp<CR>", options)
-- save
map("n", "<leader>s", "<CMD>w<CR>", options)
-- database
map("n", "<leader>b", "<CMD>DBUIToggle<CR>", options)
-- duck
map("n", "<leader>dd", "<CMD>lua require('duck').hatch('🦆')<CR>", options)
-- new tab
map("n", "<leader>t", "<CMD>tabnew<CR>", options)
-- tab previous
map("n", "<leader>1", "<CMD>tabprevious<CR>", options)
-- tab next
map("n", "<leader>2", "<CMD>tabnext<CR>", options)
-- exit
map("n", "<leader>q", "<CMD>q!<CR>", options)

require("package-info").setup()
require("crates").setup()

vim.api.nvim_create_user_command("Search", function(opts)
	local cheatsh = require("cheatsh")
	cheatsh.fetch(opts.args)
end, {
	nargs = 1,
	desc = "Fetch cheatsheet from cheat.sh",
})
