-- return {
--   'goolord/alpha-nvim',
--   dependencies = { 'echasnovski/mini.icons' },
--   config = function()
--     require('alpha').setup(require('alpha.themes.startify').config)
--   end,
-- }

-- https://github.com/goolord/alpha-nvim/discussions/16
return {
  'goolord/alpha-nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      '     ██╗██╗   ██╗███████╗████████╗    ██████╗  ██████╗     ████████╗██╗  ██╗██╗███╗   ██╗ ██████╗ ███████╗',
      '     ██║██║   ██║██╔════╝╚══██╔══╝    ██╔══██╗██╔═══██╗    ╚══██╔══╝██║  ██║██║████╗  ██║██╔════╝ ██╔════╝',
      '     ██║██║   ██║███████╗   ██║       ██║  ██║██║   ██║       ██║   ███████║██║██╔██╗ ██║██║  ███╗███████╗',
      '██   ██║██║   ██║╚════██║   ██║       ██║  ██║██║   ██║       ██║   ██╔══██║██║██║╚██╗██║██║   ██║╚════██║',
      '╚█████╔╝╚██████╔╝███████║   ██║       ██████╔╝╚██████╔╝       ██║   ██║  ██║██║██║ ╚████║╚██████╔╝███████║',
      ' ╚════╝  ╚═════╝ ╚══════╝   ╚═╝       ╚═════╝  ╚═════╝        ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝',
      '                                                                                                          ',
      '                                                                                                          ',
      '                             1) Make your requirements less dumb                                   ',
      '                             2) Try very hard to delete the part or process step                       ',
      '                             3) Simplify or optimize                                         ',
      '                             4) Accelerate cycle time                                         ',
      '                             5) Automate                                                ',
    }

    -- Set menu
    dashboard.section.buttons.val = {
      --   -- dashboard.button('e', 'New file', ':ene <BAR> startinsert <CR>'),
      -- dashboard.button('f', 'Find file', 'Telescope find_files<CR>'),
      --   dashboard.button('r', 'Recent', ':Telescope oldfiles<CR>'),
      --   -- dashboard.button('s', 'Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
      -- dashboard.button('q', 'Quit NVIM', ':qa<CR>'),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[
    autocmd FileType alpha setlocal nofoldenable
]]
  end,
}
