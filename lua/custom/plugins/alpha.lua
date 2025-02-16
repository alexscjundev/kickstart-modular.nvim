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

local if_nil = vim.F.if_nil
local leader = 'SPC'
--- @param sc string
--- @param txt string
--- @param keybind string? optional
--- @param keybind_opts table? optional
local function button(sc, txt, keybind, keybind_opts)
  local sc_ = sc:gsub('%s', ''):gsub(leader, '<leader>')

  local opts = {
    position = 'center',
    shortcut = sc,
    cursor = 3,
    width = 50,
    align_shortcut = 'right',
    hl_shortcut = 'Keyword',
  }
  if keybind then
    keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
    opts.keymap = { 'n', sc_, keybind, keybind_opts }
  end

  local function on_press()
    local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. '<Ignore>', true, false, true)
    vim.api.nvim_feedkeys(key, 't', false)
  end

  return {
    type = 'button',
    val = txt,
    on_press = on_press,
    opts = opts,
  }
end

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

    -- local buttons = {
    --   type = 'group',
    --   val = {
    --     -- button('e', '  New file', '<cmd>ene <CR>'),
    --     button('SPC s f', '󰈞  [S]earch [F]iles', ':Telescope find_files<CR>'),
    --     -- button('SPC s .', '󰊄  [S]earch Recent Files', ':Telescope oldfiles<CR>'),
    --     -- button('SPC f r', '  Frecency/MRU'),
    --     -- button('SPC f g', '󰈬  Find word'),
    --     -- button('SPC f m', '  Jump to bookmarks'),
    --     -- button('SPC s l', '  Open last session'),
    --     button('q', '  Quit', ':qa<CR>'),
    --   },
    --   opts = {
    --     spacing = 0,
    --   },
    -- }

    local config = {
      layout = {
        { type = 'padding', val = 20 },
        header,
        -- { type = 'padding', val = 2 },
        -- buttons,
      },
      opts = {
        margin = 5,
      },
    }

    alpha.setup(config)
  end,
}
