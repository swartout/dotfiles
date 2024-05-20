-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- define "UpdateSite" to update the site
vim.api.nvim_create_user_command('UpdateSite', function()
  vim.cmd('!bash -ic update-site')
end, {})
