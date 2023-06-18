return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
	{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
	{ "<C-p>", "<cmd>Telescope git_files<cr>" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
    }
}
