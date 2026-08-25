return
{
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local ts = require("nvim-treesitter")
        ts.install({
            "markdown",
            "markdown_inline",
            "latex",
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {"markdown", "tex", "plaintex"},
            callback = function(args)
                vim.treesitter.start(args.buf)
            end,
        })
    end,
}
