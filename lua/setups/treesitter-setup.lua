-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {},
  auto_install = true,
  sync_install = true,
  ignore_install = { "lua", "vim", "java", "javascript", "json" },
})
