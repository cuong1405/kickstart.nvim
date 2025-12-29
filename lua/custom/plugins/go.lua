-- lua/custom/plugins/go.lua
return {
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    -- This plugin requires 'go' to be installed on the system
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('gopher').setup()
    end,
    keys = {
      { '<leader>gsj', '<cmd>GoTagAdd json<cr>', desc = 'Go: Add [j]son struct tags' },
      { '<leader>gsy', '<cmd>GoTagAdd yaml<cr>', desc = 'Go: Add [y]aml struct tags' },
      { '<leader>gie', '<cmd>GoIfErr<cr>', desc = 'Go: Generate [i]f [e]rr' },
    },
  },
}
