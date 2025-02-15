-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- return {
--   'nvim-neo-tree/neo-tree.nvim',
--   version = '*',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--     'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
--     'MunifTanjim/nui.nvim',
--   },
--   cmd = 'Neotree',
--   keys = {
--     { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
--   },
--   opts = {
--     filesystem = {
--       window = {
--         mappings = {
--           ['\\'] = 'close_window',
--           ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
--           ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
--           ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
--         },
--       },
--     },
--   },
-- }

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>x', ':Neotree close<CR>', desc = 'Close NeoTree', silent = true },
  },
  opts = {
    close_if_last_window = false, -- Prevents auto-closing
    popup_border_style = 'rounded',
    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
      follow_current_file = {
        enabled = true, -- Focus the current file in tree
        leave_dirs_open = true, -- Keep parent directories open
      },
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
      hijack_netrw_behavior = 'open_default',
      use_libuv_file_watcher = true,
    },

    window = {
      position = 'left',
      width = 30,
      mappings = {
        ['\\'] = 'close_window',
        ['e'] = function()
          vim.api.nvim_exec('Neotree focus filesystem left', true)
        end,
        ['b'] = function()
          vim.api.nvim_exec('Neotree focus buffers left', true)
        end,
        -- ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
        ['<space>'] = 'toggle_node',
        ['<2-LeftMouse>'] = 'open',
        ['<cr>'] = 'open',
        ['l'] = 'open',
        ['h'] = 'close_node',
        ['a'] = 'add',
        ['d'] = 'delete',
        ['r'] = 'rename',
        ['c'] = 'copy',
        ['m'] = 'move',
        ['q'] = 'close_window',
        ['R'] = 'refresh',
        ['<C-b>'] = function()
          vim.cmd 'wincmd p' -- Jump to previous (last accessed) window
        end,
      },
    },

    default_component_configs = {
      indent = {
        indent_size = 2,
        padding = 1,
        with_markers = true,
        indent_marker = '│',
        last_indent_marker = '└',
        highlight = 'NeoTreeIndentMarker',
      },
      icon = {
        folder_closed = '',
        folder_open = '',
        folder_empty = '',
        default = '',
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
      },
      git_status = {
        symbols = {
          added = '✚',
          modified = '',
          deleted = '✖',
          renamed = '󰁕',
          untracked = '',
          ignored = '',
          unstaged = '󰄱',
          staged = '',
          conflict = '',
        },
      },
    },
  },
}

