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
            "c",
            "cpp"
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "markdown",
                "tex",
                "plaintex",
                "c",
                "cpp"
            },
            callback = function(args)
                vim.treesitter.start(args.buf)
            end,
        })
    end,
}
