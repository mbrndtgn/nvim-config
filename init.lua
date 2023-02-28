local set = vim.opt

set.mouse = 'a'
set.number = true
set.numberwidth = 5
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.autoindent = true

require('plugins')

-- nord theme
vim.g.nord_italic = false
require('nord').set()

-- neogit
require('neogit').setup()

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
set.termguicolors = true
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
require('nvim-tree').setup()

-- nvim-lualine
require('lualine').setup {
  options = {
    icons_enabled = false,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  }
}

-- barbar.nvim
require('bufferline').setup {
  auto_hide = true,
}
