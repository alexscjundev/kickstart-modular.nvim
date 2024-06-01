return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    'twerth/ir_black',
    -- 'chriskempson/tsquarefrog',
    -- 'squarefrog/tomorrow-night.vim',
    -- 'projekt0n/github-nvim-theme',
    -- 'dgox16/oldworld.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.colorscheme 'Tomorrow-night'

      -- vim.cmd 'colorscheme github_dark_dimmed'
      -- vim.cmd 'colorscheme github_dark_default'
      -- vim.cmd 'colorscheme github_dark_high_contrast'

      -- vim.cmd.colorscheme 'oldworld'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    config = function()
      -- put vimscript functions here
      vim.cmd.colorscheme 'ir_black'
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      on_highlights = function(hl, c)
        hl.WinSeparator = { fg = c.purple }
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
