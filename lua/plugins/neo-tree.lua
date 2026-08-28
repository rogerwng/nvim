return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        lazy = false,
        opts = {
            close_if_last_window = true,

            window = {
                width = 28,
                mappings = {
                    ["l"] = "open",
                },
            },
        },

        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle left<CR>",
                desc = "Toggle Neo-tree",
            },
        },
    },
}
