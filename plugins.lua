local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                -- defaults
                "vim",
                "lua",

                -- web dev
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",

                -- low level
                "cpp",
                "c",
            },
        },
    },
    {
        "vim-crystal/vim-crystal",
        ft = "crystal",
        config = function(_)
            vim.g.crystal_auto_format = 1
        end
    },
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.configs.null-ls"
            end,
        },

        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
}
return plugins
