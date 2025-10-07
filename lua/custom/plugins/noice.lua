-- This plugin disables the LSP signature help pop-up (parameter hints)
-- by using noice.nvim's built-in settings.
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    lsp = {
      signature = {
        enabled = false, -- disables the signature help pop-up
      },
    },
    -- You can add more Noice options here if needed
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
}
