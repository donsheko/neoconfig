vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 -- Github Copilot
 use 'github/copilot.vim'

 -- Telescope
 use {
   'nvim-telescope/telescope.nvim',
   branch = '0.1.x',
   requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
 }

 use { "catppuccin/nvim", as = "catppuccin" }

 use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
end)
