vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	--Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--rose-pine
	use{"rose-pine/neovim"}
	--gruvbox_material
	use{"sainnhe/gruvbox-material"}
	--undotree
	use {'mbbill/undotree'}
	--Lsp
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use {"williamboman/mason.nvim"}
	use {"williamboman/mason-lspconfig.nvim"}
	--Lualine
	use { 'nvim-lualine/lualine.nvim' }
	--Icons
	use { 'nvim-tree/nvim-web-devicons'}
	--Nvim-tree
	use{"nvim-tree/nvim-tree.lua"}
	--Bufferline
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	--Null-ls
	use {"nvimtools/none-ls.nvim"}
	--AutoPair
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
	--Nvim-Treesitter
	use {
		'nvim-treesitter/nvim-treesitter'
	}
end)
