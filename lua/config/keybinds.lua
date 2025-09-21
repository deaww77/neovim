vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- ไป buffer ถัดไป/ก่อนหน้า
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>')

-- ปิด buffer ปัจจุบัน
vim.keymap.set('n', '<leader>c', '<Cmd>BufferClose<CR>')

-- ไป buffer ตามหมายเลข (1–9)
vim.keymap.set('n', '<leader>1', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<leader>2', '<Cmd>BufferGoto 2<CR>')

