-- return {
--   'goolord/alpha-nvim',
--   dependencies = { 'echasnovski/mini.icons' },
--   config = function()
--     require('alpha').setup(require('alpha.themes.startify').config)
--   end,
-- }

-- https://github.com/goolord/alpha-nvim/discussions/16
-- return {
--   'goolord/alpha-nvim',
--   dependencies = { 'echasnovski/mini.icons' },
--   config = function()
--     local alpha = require 'alpha'
--     local dashboard = require 'alpha.themes.dashboard'
--
--     dashboard.section.header.val = {
--       '     ██╗██╗   ██╗███████╗████████╗    ██████╗  ██████╗     ████████╗██╗  ██╗██╗███╗   ██╗ ██████╗ ███████╗',
--       '     ██║██║   ██║██╔════╝╚══██╔══╝    ██╔══██╗██╔═══██╗    ╚══██╔══╝██║  ██║██║████╗  ██║██╔════╝ ██╔════╝',
--       '     ██║██║   ██║███████╗   ██║       ██║  ██║██║   ██║       ██║   ███████║██║██╔██╗ ██║██║  ███╗███████╗',
--       '██   ██║██║   ██║╚════██║   ██║       ██║  ██║██║   ██║       ██║   ██╔══██║██║██║╚██╗██║██║   ██║╚════██║',
--       '╚█████╔╝╚██████╔╝███████║   ██║       ██████╔╝╚██████╔╝       ██║   ██║  ██║██║██║ ╚████║╚██████╔╝███████║',
--       ' ╚════╝  ╚═════╝ ╚══════╝   ╚═╝       ╚═════╝  ╚═════╝        ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝',
--       '                                                                                                          ',
--       '                                                                                                          ',
--       '                             1) Make your requirements less dumb                                   ',
--       '                             2) Try very hard to delete the part or process step                       ',
--       '                             3) Simplify or optimize                                         ',
--       '                             4) Accelerate cycle time                                         ',
--       '                             5) Automate                                                ',
--     }
--
--     -- Set menu
--     dashboard.section.buttons.val = {}
--
--     -- Send config to alpha
--     alpha.setup(dashboard.opts)
--
--     -- Disable folding on alpha buffer
--     vim.cmd [[
--     autocmd FileType alpha setlocal nofoldenable
-- ]]
--   end,
-- }

return {
  'goolord/alpha-nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    local alpha = require 'alpha'

    local header_val = {
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

    -- taken from alpha source code
    local header = {
      type = 'text',
      val = header_val,
      opts = {
        position = 'center',
        hl = 'Type',
        -- wrap = "overflow";
      },
    }

    local config = {
      layout = {
        { type = 'padding', val = 20 },
        header,
      },
      opts = {
        margin = 5,
      },
    }

    alpha.setup(config)
  end,
}
