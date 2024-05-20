-- [[ Load and execute lazy.nvim ]]

-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- install lazy if not already installed
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

-- add lazy to path
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- setup and run lazy with custom plugins folder
require('lazy').setup({ import = 'custom.plugins' }, {})
