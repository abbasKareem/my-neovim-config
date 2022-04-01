return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
   use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  use {'windwp/nvim-ts-autotag'}
  use {'windwp/nvim-autopairs'}
  use {'p00f/nvim-ts-rainbow'}
  use {'folke/which-key.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

use 'onsails/lspkind-nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use "jose-elias-alvarez/nvim-lsp-ts-utils"
use "norcalli/nvim-colorizer.lua"
use "glepnir/dashboard-nvim"
use "lukas-reineke/indent-blankline.nvim"
--use 'jose-elias-alvarez/null-ls.nvim'
use "lukas-reineke/lsp-format.nvim"
use "akinsho/toggleterm.nvim"
use 'terrortylor/nvim-comment'
use 'folke/zen-mode.nvim'
use 'moll/vim-bbye'
use 'Mofiqul/vscode.nvim'

use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup{
      current_line_blame = true,
    }
  end
}

end)
