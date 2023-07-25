return {
    "lukas-reineke/lsp-format.nvim",
    dependencies = {
        "mattn/efm-langserver",
        "creativenull/efmls-configs-nvim",
    },
    config = function()
        require("lsp-format").setup({
            -- typescript = {
            --     tab_width = function()
            --         return vim.opt.shiftwidth:get()
            --     end,
            -- },
            -- yaml = { tab_width = 2 },
        })
        local prettier = {
            formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
            formatStdin = true,
        }
        local black = {
            formatCommand = "black --quiet -",
            formatStdin = true,
        }
        local isort = {
            formatCommand = "isort --quiet -",
            formatStdin = true,
        }
        require "lspconfig".efm.setup {
            init_options = { documentFormatting = true },
            settings = {
                rootMarkers = { ".git/" },
                languages = {
                    lua = {
                        { formatCommand = "lua-format -i", formatStdin = true }
                    },
                    typescript = { prettier },
                    yaml = { prettier },
                    python = {
                        require('efmls-configs.linters.flake8'),
                        require('efmls-configs.formatters.black'),
                        isort,
                    },
                }
            }
        }
    end
}
