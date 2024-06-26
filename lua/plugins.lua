local packer = require('packer')
local util = require("packer.util")

local function pluginspec()
  local use = use;
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'  -- run :TSUpdate when updating
  use 'gpanders/nvim-parinfer'
  use 'm4xshen/autoclose.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'Olical/conjure'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'ojroques/nvim-osc52'
  use 'tpope/vim-dispatch'
  use 'radenling/vim-dispatch-neovim'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'},  -- Required
      {'L3MON4D3/LuaSnip'},      -- Required
      {'PaterJason/cmp-conjure'} -- conjure
    }
  }
  use { 'clojure-vim/vim-jack-in', requires = 'vim-dispatch-neovim'}
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-web-devicons' }
  -- use { 'rose-pine/neovim', as = 'rose-pine' }
  use { 'folke/tokyonight.nvim' }
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-web-devicons' }
  use { 'timuntersberger/neogit', requires = 'plenary.nvim' }
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end

packer.startup {
  pluginspec,
  config = {
    snapshot = util.join_paths(vim.fn.stdpath("config"), "packer-snapshot.json"),
    snapshot_path = vim.fn.stdpath("config"),
  }
}
