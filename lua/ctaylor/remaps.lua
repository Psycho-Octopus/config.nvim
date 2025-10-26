vim.g.mapleader = " "

vim.keymap.set("n", "<C-e>", vim.cmd.Netrw)

vim.keymap.set("i", "<C-c>", "<ESC>")

vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch)

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
