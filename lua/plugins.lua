return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'  -- run :TSUpdate when updating
  use 'gpanders/nvim-parinfer'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'Olical/conjure'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'ojroques/nvim-osc52'
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-web-devicons' }
  use { 'uloco/bluloco.nvim', requires = 'rktjmp/lush.nvim' }
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use { 'romgrk/barbar.nvim', tag = 'v1.5.0', requires = 'nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-web-devicons' }
  use { 'timuntersberger/neogit', requires = 'plenary.nvim' }
end)
