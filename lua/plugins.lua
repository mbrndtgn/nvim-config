return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use 'gpanders/nvim-parinfer'
  use 'luochen1990/rainbow'
  use 'guns/vim-sexp'
  use 'liquidz/vim-iced'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'ojroques/nvim-osc52'
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-web-devicons' }
  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-web-devicons' }
  use { 'timuntersberger/neogit', requires = 'plenary.nvim' }
end)
