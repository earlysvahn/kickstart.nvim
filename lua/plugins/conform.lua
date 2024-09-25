return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        rust = { 'rustfmt' },
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        typescript = { 'prettierd', 'prettier', stop_after_first = true },
        go = { 'goimports' },
        terraform = { 'terraform' },
        dockerfile = { 'dockfmt' },
        cs = { 'csharpier' },
        sql = { 'sql_formatter' },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    }
  end,
}
