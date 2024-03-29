vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Line numbers
vim.wo.number = true

-- Terminal
vim.keymap.set("n", "<c-t>", ":terminal<CR>")
vim.keymap.set("n", "<leader>h", ":vsplit<CR>")
vim.keymap.set("n", "<leader>kj", ":split<CR>")

-- C stuff
vim.keymap.set("n", "<F8>", ":w <CR> :make %< <CR>")

