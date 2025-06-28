local map = vim.api.nvim_set_keymap

local docker = require("nvim-docker")

map("n", "<leader>l", docker.containers.list_containers)
