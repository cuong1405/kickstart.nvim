-- This file is for configuring TypeScript and React development tools

return {
  -- Add typescript-tools.nvim plugin
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      -- npm i -g typescript-language-server typescript prettier @typescript-eslint/parser eslint
      -- see :help tsserver
      settings = {
        -- spawn additional tsserver instance to calculate diagnostics on it
        separate_diagnostic_server = true,
      },
    },
  },

  -- Add the linter plugin
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
        javascriptreact = { 'eslint_d' },
        typescriptreact = { 'eslint_d' },
      }

      -- Create an autocommand to run linting on buffer write and when a buffer is entered
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
        group = vim.api.nvim_create_augroup('linting', { clear = true }),
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
