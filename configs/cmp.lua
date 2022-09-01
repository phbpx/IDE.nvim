local M = {}

M.cmp = function()
  return {
    formatting = {
      format = function(entry, vim_item)
        if entry.source.name == 'cmp_tabnine' then
          vim_item.kind = string.format("%s %s", '', ' TabNine')
        elseif entry.source.name == 'copilot' then
          vim_item.kind = string.format("%s %s", '', 'Github')
        else
          local icons = require("nvchad_ui.icons").lspkind
          vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
        end

        return vim_item
      end,
    },
    sources = {
      {
        name = "cmp_tabnine",
        group_index = 2,
      },
      {
        name = "copilot",
        group_index = 2,
      },
      {
        name = "luasnip",
        group_index = 2,
      },
      {
        name = "nvim_lsp",
        group_index = 2,
      },
      {
        name = "buffer",
        group_index = 2,
      },
      {
        name = "nvim_lua",
        group_index = 2,
      },
      {
        name = "path",
        group_index = 2,
      },
    },
  }
end

return M
