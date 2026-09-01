require("config.lazy")

-- Tab is 4 spaces instead of 8
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Use system keyboard
vim.opt.clipboard = "unnamedplus"

-- Enable line numbers
vim.opt.number = true
vim.opt.statuscolumn = "%s %l  " -- widen the line number column

-- VSCode style keybinds to scroll up and down
vim.keymap.set("n", "H", "Hkk", { noremap = true })
vim.keymap.set("n", "L", "Ljj", { noremap = true })
