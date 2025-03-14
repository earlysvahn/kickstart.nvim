return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-completion',
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1

      vim.g.dbs = {
        { name = '[DEV] Deadletter', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/deadletter' },
        { name = '[DEV] Kiwi-api', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/kiwi-api' },
        { name = '[DEV] Munin', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2101/munin-api' },
        { name = '[DEV] Niffler', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/niffler' },
        { name = '[DEV] Preen', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/preen-service' },
        { name = '[DEV] Shipment', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/shipment' },
        { name = '[DEV] Quetzalcoatlus', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2001/quetzalcoatlus' },
        { name = '[TEST] Munin', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2102/munin-api' },
        { name = '[TEST] Niffler', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2002/niffler' },
        { name = '[STAGE] Munin', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2103/munin-api' },
        { name = '[STAGE] Niffler', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2003/niffler' },
        { name = '[PROD] Munin', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2104/munin-api' },
        { name = '[PROD-READ] Niffler', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2005/niffler' },
        { name = '[PROD-READ] Shipment', url = 'postgresql://fredrik.svahn%40earlybird.se@localhost:2005/shipment' },
      }

      vim.api.nvim_set_keymap(
        'n',
        '<leader>do',
        ':silent !tmux new-window -n db "nvim +DBUIToggle"<CR>',
        { noremap = true, silent = true, desc = '[D]atabase [O]pen in new Tmux window' }
      )
      vim.api.nvim_set_keymap('n', '<leader>df', ':DBUIFindBuffer<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>da', ':DBUIAddConnection<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>dr', ':DBUIRenameBuffer<CR>', { noremap = true, silent = true })
    end,
  },
}
