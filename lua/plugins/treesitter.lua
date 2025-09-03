return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    { 'nushell/tree-sitter-nu', build = ':TSUpdate nu' },
    { 'nvim-treesitter/nvim-treesitter-textobjects' }, -- ⬅ adds af/if, ac/ic, etc.
  },
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'go' },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- jump forward to next textobject
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          -- (optional) add more:
          -- ['ac'] = '@class.outer',
          -- ['ic'] = '@class.inner',
        },
      },
    },
  },
}
