-- lua/custom/plugins/sql.lua
return {
  {
    'tpope/vim-dadbod',
    dependencies = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },
    config = function()
      -- Optional: Configure DBUI appearance
      vim.g.db_ui_save_location = vim.fn.stdpath 'config' .. '/db_ui'
      vim.g.db_ui_show_help = 0
      vim.g.db_ui_win_width = 35
    end,
    keys = {
      { '<leader>du', '<cmd>DBUIToggle<cr>', desc = '[D]atabase [U]I Toggle' },
      { '<leader>df', '<cmd>DBUIFindBuffer<cr>', desc = '[D]atabase [F]ind Buffer' },
      { '<leader>dr', '<cmd>DBUIRenameBuffer<cr>', desc = '[D]atabase [R]ename Buffer' },
      { '<leader>dl', '<cmd>DBUILastQueryInfo<cr>', desc = '[D]atabase [L]ast Query' },
    },
  },
}
