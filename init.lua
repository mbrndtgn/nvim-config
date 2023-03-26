local set = vim.opt

set.mouse = 'a'
set.number = true
set.numberwidth = 5
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.autoindent = true

vim.g.mapleader = ','
vim.g.iced_enable_default_key_mappings = true
vim.api.nvim_set_keymap('n', '<leader>i', ':IcedConnect<CR>', { noremap = true, silent = true })

require('plugins')

-- nord theme
vim.g.nord_italic = false
require('nord').set()

-- rainbow
vim.g.rainbow_active = true
vim.cmd[[
let g:rainbow_conf = {
\  'guifgs': ['orchid4', 'salmon4', 'yellow4', 'green4', 'cadetblue4', 'cornflowerblue', 'mediumorchid3'],
\  'separately': {
\    '*': 0,
\    'scheme': {'guifgs': ['orchid4', 'salmon4', 'yellow4', 'green4', 'cadetblue4', 'cornflowerblue', 'mediumorchid3']},
\    'clojure': {'guifgs': ['orchid4', 'salmon4', 'yellow4', 'green4', 'cadetblue4', 'cornflowerblue', 'mediumorchid3']},
\  }
\}
]]

-- neogit
require('neogit').setup()

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
set.termguicolors = true
vim.api.nvim_set_keymap('n', '<leader>o', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
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

-- nvim-osc52
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, { expr = true })
vim.keymap.set('n', '<leader>cc', '<leader>c_', { remap = true })
vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)
require('osc52').setup {
  max_length = 0,      -- Maximum length of selection (0 for no limit)
  silent     = false,  -- Disable message on successful copy
  trim       = false,  -- Trim surrounding whitespaces before copy
}
