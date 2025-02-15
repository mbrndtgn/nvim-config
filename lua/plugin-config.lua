-- theme
vim.cmd[[colorscheme tokyonight-night]]

-- autoclose
require("autoclose").setup({
  options = {
    disabled_filetypes = { 'clojure', 'scheme', 'lisp', 'racket', 'hy', 'fennel', 'janet', 'carp', 'wast', 'yuck' },
  },
})

-- nvim-treesitter
require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'clojure', 'cmake', 'commonlisp', 'css', 'diff', 'dockerfile', 'fennel', 'go', 'gomod', 'gosum',
    'html', 'javascript', 'json', 'lua', 'make', 'markdown', 'passwd', 'python', 'racket', 'regex', 'ruby', 'scheme',
    'sql', 'toml', 'vim', 'yaml' },
}

-- lsp-zero
local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)
lsp.setup()
lsp.default_keymaps({
  buffer = bufnr,
  preserve_mappings = false
})

-- nvim-cmp
local cmp = require 'cmp'
cmp.setup {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }, {
    { name = 'conjure' },
  })
}
local servers = {
  'bashls',
  'clojure_lsp',
  'cssls',
  'html',
  'pyright',
}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
for _, server in pairs(servers) do
  require('lspconfig')[server].setup {
    capabilities = capabilities
  }
end

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
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  }
}

-- nvim-osc52
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, { expr = true })
vim.keymap.set('n', '<leader>cc', '<leader>c_', { remap = true })
vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)
require('osc52').setup {
  max_length = 0,     -- Maximum length of selection (0 for no limit)
  silent     = false, -- Disable message on successful copy
  trim       = false, -- Trim surrounding whitespaces before copy
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
