return {
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("kanagawa-dragon")
            vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" }) -- set line number column background to match editor background
            vim.api.nvim_set_hl(0, "LineNr", { fg = "#54546D", bg = "NONE" }) -- make the line number text darker
    end,
    },
}
