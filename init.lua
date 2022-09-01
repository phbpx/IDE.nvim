-- example file i.e lua/custom/init.lua
vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]
-- load your globals, autocmds here or anything ._.

-- AutoCMDs
local editor = vim.api.nvim_create_augroup('editor_options', { clear = true })
local create_autocmd = vim.api.nvim_create_autocmd

create_autocmd({ 'FileType' }, {
  group = editor,
  pattern = {
    'go'
  },
  callback = function()
    vim.bo.tabstop = 8
    vim.bo.shiftwidth = 8
    vim.bo.expandtab = false
  end,
})

create_autocmd({ 'FileType' }, {
  group = editor,
  pattern = {
    'python', 'typescript',
  },
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = false
  end,
})
