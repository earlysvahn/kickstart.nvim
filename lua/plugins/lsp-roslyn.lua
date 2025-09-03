return {
  'seblyng/roslyn.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {},
  config = function(_, opts)
    require('roslyn').setup(opts)

    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*.cs',
      callback = function(args)
        vim.lsp.buf.format {
          bufnr = args.buf,
          timeout_ms = 1500,
          filter = function(client)
            return client.name and client.name:lower():find 'roslyn' ~= nil
          end,
        }
      end,
    })
  end,
}
