vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--choice packages
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use({
		'nvim-treesitter/nvim-treesitter',
		{run =  ':TSUpdate'}
	})
	use('nvim-treesitter/playground')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use{
		'neovim/nvim-lspconfig',
			config = function()
				require'lspconfig'.lua_ls.setup{}
			end,

		}

	end)

