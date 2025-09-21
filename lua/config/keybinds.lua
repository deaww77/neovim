vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)


vim.keymap.set('n', '<leader>c', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', '<Cmd>BufferNext<CR>',  { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', '<Cmd>BufferPrevious<CR>',  { noremap = true, silent = true })

vim.keymap.set('n', '<leader>-', ':split<CR>', { silent = true })
-- split แนวตั้ง
vim.keymap.set('n', '<leader>=', ':vsplit<CR>', { silent = true })

-- ย้ายไปยัง split ข้างๆ ด้วย leader + h/j/k/l
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

-- ปิด split ปัจจุบัน
vim.keymap.set('n', '<leader>q', '<C-w>c')
