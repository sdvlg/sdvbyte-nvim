local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {},
  auto_install = true,
  sync_install = true,
  ignore_install = { "lua", "vim", "java", "javascript", "json" },
})
