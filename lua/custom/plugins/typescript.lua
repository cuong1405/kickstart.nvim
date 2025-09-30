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
}
