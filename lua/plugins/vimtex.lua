return
{
    {
        "lervag/vimtex",
        lazy = false,
        -- tag = "v2.17", -- uncomment to pin to specific release
        init = function()
            -- global vimtex settings
            vim.g.vimtex_syntax_enabled = 1
            vim.g.vimtex_imaps_enabled = 0
            -- vimtex_view_settings
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
            -- quickfix settings
            vim.g.vimtex_quickfix_open_on_warning = 0 -- don't open quickfix if there are only warnings
            vim.g.vimtex_quickfix_ignore_filters = {"Underfull","Overfull","LaTeX Warning: .\\+ float specifier changed to", "Package hyperref Warning: Token not allowed in a PDF string"}
        end,
    },
}

