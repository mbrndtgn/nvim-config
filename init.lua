local set = vim.opt

set.mouse = 'a'
set.number = true
set.numberwidth = 5
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.autoindent = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

require('plugins')

-- autoclose
require("autoclose").setup({
   options = {
      disabled_filetypes = {'clojure', 'scheme', 'lisp', 'racket', 'hy', 'fennel', 'janet', 'carp', 'wast', 'yuck'},
   },
})

-- rose-pine
require('rose-pine').setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = 'auto',
  dark_variant = 'moon',
})
vim.cmd('colorscheme rose-pine')

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'clojure', 'cmake', 'commonlisp', 'css', 'diff', 'dockerfile', 'fennel', 'go',  'gomod',  'gosum',  'html',  'javascript',  'json',  'lua',  'make',  'markdown',  'passwd',  'python',  'racket',  'regex',  'ruby',  'scheme',  'sql',  'toml',  'vim',  'yaml'  },
}

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
    theme = 'auto',
    icons_enabled = false,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  }
}

-- barbar.nvim
require'bufferline'.setup {
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
