--[[ better_escape.lua
--
-- Provides a fast, distraction-free way to escape from insert mode
-- using key sequences like "jj" or "jk", without the visual delay of regular mappings.
--
-- This uses 'max397574/better-escape.nvim'k, a lightweight and Neovim-native plugin.
-- It detects your escape sequence intelligently and works without interfering with typing.
-- ]]

return {
  'max397574/better-escape.nvim',
  config = function()
    require('better_escape').setup()
  end,
}
