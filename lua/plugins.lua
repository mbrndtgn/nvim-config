local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',  -- run :TSUpdate when updating
  'gpanders/nvim-parinfer',
  'm4xshen/autoclose.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'Olical/conjure',
  'nvim-tree/nvim-web-devicons',
  'nvim-lua/plenary.nvim',
  'ojroques/nvim-osc52',
  'tpope/vim-dispatch',
  'radenling/vim-dispatch-neovim',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
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
  },
  { 'clojure-vim/vim-jack-in', dependencies = 'vim-dispatch-neovim'},
  { 'nvim-tree/nvim-tree.lua', dependencies = 'nvim-web-devicons' },
  { 'folke/tokyonight.nvim' },
  { 'nvim-lualine/lualine.nvim', dependencies = 'nvim-web-devicons' },
  { 'timuntersberger/neogit', dependencies = 'plenary.nvim' },
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
})


