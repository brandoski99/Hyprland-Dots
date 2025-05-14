vim.g.mapleader = " "

vim.keymap.set("n","<leader>v", ":vsplit | wincmd l | terminal<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>h', vim.diagnostic.open_float, { desc = 'Show diagnostic message' })
