return {
  {
    'FabijanZulj/blame.nvim',
    lazy = false,
    config = function()
      require('blame').setup {}
    end,

    vim.keymap.set('n', '<leader>b', function()
      vim.cmd 'BlameToggle'
    end, { desc = 'Toggle git blame' }),
  },
}
