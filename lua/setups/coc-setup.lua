-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

local g = vim.g
local cmd = vim.cmd

g.coc_global_extensions = {
  "coc-json",
  "coc-toml",
  "coc-tsserver",
  "coc-pairs",
  "coc-emmet",
  "coc-lua",
  "coc-prettier",
  "@yaegassy/coc-tailwindcss3",
  "coc-angular",
  "coc-vetur",
  "coc-java",
  "coc-git",
  "coc-rust-analyzer",
  "coc-xml"
}

cmd [[
  au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
]]
