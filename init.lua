vim.api.nvim_exec('language en_US', true)

local set = vim.opt
set.number = true
set.numberwidth = 5
set.mouse = 'a'

require('plugins')

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
