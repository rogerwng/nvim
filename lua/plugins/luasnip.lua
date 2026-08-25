return 
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    config = function()
        require("luasnip.loaders.from_lua").lazy_load({paths = "./lua/luasnip/"})
        local ls = require("luasnip")
        ls.setup({
            update_events = {"TextChanged", "TextChangedI"},
            enable_autosnippets = true,
            store_selection_keys = "<Tab>",
        })
    vim.cmd([[
        imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump': '<Tab>'
        smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
        imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
        smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    ]])
    end
}
