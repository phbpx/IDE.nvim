-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
return {
   -- format & linting
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.configs.null-ls"
      end,
   },

   ["Pocco81/AutoSave.nvim"] = {
      module = "autosave",
      config = function()
         require("custom.configs.autosave").autosave()
      end,
   },

   ["hashivim/vim-terraform"] = {},

   ["goolord/alpha-nvim"] = {
      disable = false,
   },

   ['segeljakt/vim-silicon'] = {
      config = function ()
         vim.cmd [[
            let g:silicon = {
               \   'theme':               'OneHalfDark',
               \   'font': 'Fira Code,Fira Code Medium',
               \   'background':              '#282c34',
               \   'shadow-color':            '#282c34',
               \   'line-pad':                        2,
               \   'pad-horiz':                       0,
               \   'pad-vert':                        0,
               \   'shadow-blur-radius':              0,
               \   'shadow-offset-x':                 0,
               \   'shadow-offset-y':                 0,
               \   'line-number':                v:true,
               \   'round-corner':               v:true,
               \   'window-controls':           v:false,
               \ }
            let g:silicon['output'] = '/tmp/silicon-{time:%Y-%m-%d-%H%M%S}.png'
         ]]
      end
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  ["watzon/vim-edge-template"] = {},

  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },

  ["ellisonleao/glow.nvim"] = {},

  ["tzachar/cmp-tabnine"] = {
     after = "nvim-cmp",
     run = "./install.sh",
     config = require("custom.configs.tabnine").tabnine()
  },

  ["zbirenbaum/copilot.lua"] = {
    event = "InsertEnter",
    config = function ()
      vim.defer_fn(function()
        require "custom.configs.copilot"
      end, 100)
    end,
  },

  ["zbirenbaum/copilot-cmp"] = {
    after = { "copilot.lua", "nvim-cmp" },
  },
}
