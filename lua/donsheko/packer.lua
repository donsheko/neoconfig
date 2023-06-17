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
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        "adalessa/laravel.nvim",
        dependencies = {
            {"nvim-telescope/telescope.nvim"},
            {"tpope/vim-dotenv"},
            {"MunifTanjim/nui.nvim"},
        },
    }
end)
