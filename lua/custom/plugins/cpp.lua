-- This file is for configuring C/C++ development tools

return {
  -- CMake integration for C/C++ projects
  {
    'Civitasv/cmake-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ft = { 'c', 'cpp', 'cmake' }, -- Only load for C/C++ and CMake files
    opts = {
      cmake_command = 'cmake',
      cmake_build_directory = 'build',
      cmake_generate_options = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1' },
      cmake_dap_configuration = {
        name = 'cpp',
        type = 'codelldb',
        request = 'launch',
      },
    },
    keys = {
      { '<leader>cb', '<cmd>CMakeBuild<cr>', desc = '[C]make [B]uild' },
      { '<leader>cr', '<cmd>CMakeRun<cr>', desc = '[C]make [R]un' },
      { '<leader>cd', '<cmd>CMakeDebug<cr>', desc = '[C]make [D]ebug' },
      { '<leader>cc', '<cmd>CMakeClean<cr>', desc = '[C]make [C]lean' },
      { '<leader>cg', '<cmd>CMakeGenerate<cr>', desc = '[C]make [G]enerate' },
    },
  },
}
