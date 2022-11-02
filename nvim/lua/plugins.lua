local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- use 'Shatur/neovim-ayu'
    use 'catppuccin/nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'norcalli/nvim-colorizer.lua'
end)
