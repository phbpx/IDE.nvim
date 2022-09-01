-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "ayu-dark"
}

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",
        "prettier",
        "eslint-lsp",

        -- shell
        "bash-language-server",
        "shfmt",
        "shellcheck",

        -- python
        "pyright",
        "black",

        -- go
        "go",

        -- terraform
        "terraform-ls",

        -- ansible
        "ansible-language-server",

        -- docker
        "dockerfile-language-server",
      },
    },

    ["hrsh7th/nvim-cmp"] = require("custom.configs.cmp").cmp(),

    ["tzachar/cmp-tabnine"] = require("custom.configs.tabnine").tabnine(),
  },
  user = require "custom.plugins"
}

M.mappings = require "custom.configs.mappings"

return M
