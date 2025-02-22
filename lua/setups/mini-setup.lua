-- =======================================================================
-- Author      : Kenedy Nopriansyah
-- Email       : kenedinovriansyah@gmail.com
-- Linkedin    : https://www.linkedin.com/in/kenedy-nopriansyah-b5864a200/
-- Maintenance : @kenedy
-- Date        : 22 February 2025
-- =======================================================================

require("mini.diff").setup({
  view = {
    style = "sign",
    signs = { add = "+", change = "~", delete = "-" }
  }
})
require("mini.indentscope").setup()
require("mini.comment").setup({
  mappings = {
    comment = "gc",
    comment_line = "gcc",
    comment_visual = "gc",
    textobject = "gc"
  }
})
