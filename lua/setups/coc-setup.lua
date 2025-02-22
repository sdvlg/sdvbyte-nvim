local g = vim.g
local cmd = vim.cmd

g.coc_global_extensions = {
  "coc-json",
  "coc-tsserver",
  "coc-pairs",
  "coc-emmet",
  "coc-lua",
  "coc-prettier",
  "@yaegassy/coc-tailwindcss3",
  "coc-angular",
  "coc-vetur",
  "coc-java"
}

cmd [[
  au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
]]
