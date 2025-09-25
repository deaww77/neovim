return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require('lint')
    
    -- กำหนด linters สำหรับแต่ละภาษา
    lint.linters_by_ft = {
      javascript = { 'eslint' },
      typescript = { 'eslint' },
      javascriptreact = { 'eslint' },
      typescriptreact = { 'eslint' },
      python = { 'pylint' },
      sh = { 'shellcheck' },
      bash = { 'shellcheck' },
    }
    
    -- Auto-lint
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    
    -- Keymap สำหรับ manual lint
    vim.keymap.set('n', '<leader>i', function()
      lint.try_lint()
    end, { desc = 'Trigger linting for current file' })
  end,
}
