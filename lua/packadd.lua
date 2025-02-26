-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

local cmd = vim.cmd

cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use({
    "neoclide/coc.nvim",
    branch = "release"
  })
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    }
  })
  use({
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    }
  })
  use "nvim-treesitter/nvim-treesitter"
  use "akinsho/toggleterm.nvim"
  use "yorickpeterse/nvim-window"
  use "echasnovski/mini.nvim"
  use "nvim-lualine/lualine.nvim"
  use "vuki656/package-info.nvim"
  use({
    "tamton-aquib/duck.nvim",
    requires = { "whatyouhide/vim-gotham" }
  })
  use({
    "kristijanhusak/vim-dadbod-ui",
    requires = {
      {
        'tpope/vim-dadbod',
        lazy = true
      },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    }
  })
  use "saecki/crates.nvim"
  use "jbyuki/venn.nvim"
end)
