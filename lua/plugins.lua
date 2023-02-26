return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use 'gpanders/nvim-parinfer'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-web-devicons' }
  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-web-devicons' }
  use { 'timuntersberger/neogit', requires = 'plenary.nvim' }
end)
