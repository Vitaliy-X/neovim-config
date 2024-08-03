local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'
	use {
		"nvim-lua/plenary.nvim"
	}
	
	-- ColorSheme
	use 'joshdick/onedark.vim'
	vim.opt.signcolumn = 'yes'
	vim.opt.termguicolors = true
	pcall(vim.cmd, 'colorscheme onedark')

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		config = function()
			require('settings/plugins/telescope')
		end
	}

	-- Tree-sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('settings/plugins/tree')
		end
	}

	-- Nvim-tree
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
		  require'nvim-tree'.setup {},
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	  }

  	-- LSP сервер
	  local lsp = require('lsp-zero')
		lsp.preset('recommended')
		lsp.nvim_workspace()
		lsp.setup()
	
	  use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
	  
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
	  
		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
		}
	  }
	
	-- Иконки для автодополнения
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('settings/plugins/lspkind')
		end
	}
end)