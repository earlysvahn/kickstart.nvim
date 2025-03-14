return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    { 'nushell/tree-sitter-nu', build = ':TSUpdate nu' },
  },
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'vim',
      'go',
      'javascript',
      'typescript',
      'json',
      'yaml',
      'tsx',
    },

    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = {},
    },
    indent = {
      enable = true,
    },
  },
}
