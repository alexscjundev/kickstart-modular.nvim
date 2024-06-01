-- return {
--   'otavioschwanck/arrow.nvim',
--   opts = {
--     show_icons = true,
--     leader_key = ';', -- Recommended to be a single key
--     buffer_leader_key = 'm', -- Per Buffer Mappings
--   },
-- }

-- 5.12.24 - we are moving away from grapple
-- let's try out grapple
-- note the following are equivalent
-- :Grapple cycle_tags next scope=cwd
-- require("grapple").cycle_tags("next", { scope = "cwd" })
return {
  'cbochs/grapple.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  opts = {
    scope = 'git_branch',
    icons = true,
    quick_select = '123456789',
  },
  -- use my own keys
  keys = {
    { 'zy', '<cmd>Grapple toggle<cr>', desc = 'Tag a file' },
    { 'zm', '<cmd>Grapple toggle_tags<cr>', desc = 'Toggle tags menu' },
    { 'zj', '<cmd>Grapple select index=1<cr>', desc = 'Select first tag' },
    { 'zk', '<cmd>Grapple select index=2<cr>', desc = 'Select second tag' },
    { 'zl', '<cmd>Grapple select index=3<cr>', desc = 'Select third tag' },
    { 'z;', '<cmd>Grapple select index=4<cr>', desc = 'Select fourth tag' },
    { "z'", '<cmd>Grapple select index=5<cr>', desc = 'Select fifth tag' },

    -- sixth tag does not work
    -- { "<M-'>", '<cmd>Grapple select index=6<cr>', desc = 'Select sixth tag' },
  },
}

-- and how about arrow?
-- return {
--   'otavioschwanck/arrow.nvim',
--   opts = {
--     show_icons = true,
--     leader_key = ';', -- Recommended to be a single key
--     buffer_leader_key = 'm', -- Per Buffer Mappings
--   },
-- }
