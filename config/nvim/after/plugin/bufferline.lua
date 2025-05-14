vim.opt.termguicolors = true
require("bufferline").setup{}
vim.keymap.set("n","<tab>", vim.cmd.BufferLineCycleNext,{silent = true})
vim.keymap.set("n","<leader>sb", vim.cmd.BufferLinePick,{silent = true})
vim.keymap.set("n","<leader>cb", vim.cmd.BufferLinePickClose,{silent = true})
