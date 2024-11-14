local notAll = {
  [[┌┐┌┌─┐┌┬┐  ┌─┐┬  ┬    ┬ ┬┬ ┬┌─┐  ┬ ┬┌─┐┌┐┌┌┬┐┌─┐┬─┐┌─┐  ┌─┐┬─┐┌─┐  ┬  ┌─┐┌─┐┌┬┐]],
  [[││││ │ │   ├─┤│  │    │││├─┤│ │  │││├─┤│││ ││├┤ ├┬┘└─┐  ├─┤├┬┘├┤   │  │ │└─┐ │ ]],
  [[┘└┘└─┘ ┴   ┴ ┴┴─┘┴─┘  └┴┘┴ ┴└─┘  └┴┘┴ ┴┘└┘─┴┘└─┘┴└─└─┘  ┴ ┴┴└─└─┘  ┴─┘└─┘└─┘ ┴ ]],
}

local poem = {
  [[All that is gold does not glitter,]],
  [[Not all those who wander are lost;]],
  [[The old that is strong does not wither,]],
  [[Deep roots are not reached by the frost.]],
  [[                        - J.R.R. Tolkien]],
}

local gandalf = {
  [[                              ]],
  [[  ⠘⢤⣀⣀⣀⣀⣤⣤⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠉⠛⠛⠿⠿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠂⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠚⠉⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠛⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⡀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠈⠓⠦⣀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠈⠳⣼⡿]],
  [[⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠈⠁]],
  [[⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⣼⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠉⠉⠉⠙⠻⠿⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀⠀]],
  [[⢰⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⠁⠀⠀⠀⠀⠀⠀⠀]],
  [[⡾⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀]],
}

local theOneRing = {
  [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣶⣶⣶⣄⠀⢠⣄⡀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⡿⠛⢻⣿⣿⣿⠀⢀⣿⣿⣦⡀⠀⠀]],
  [[ ⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⠋⠉⠁⠀⣸⣿⣿⡏⠀⢸⣿⣿⣿⣷⡄⠀]],
  [[ ⠀⠀⠀⠀⢀⣾⣿⣿⠋⠁⠉⠀⣰⣶⣾⣿⡿⠟⠀⢠⣿⣿⣿⣿⣿⣿⡄]],
  [[ ⠀⠀⠀⣴⣿⣿⠟⠛⠀⠀⣿⣿⣿⡿⠛⠉⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⡇]],
  [[ ⠀⢀⣾⣿⣿⠿⠀⠀⣶⣾⣿⡿⠋⠀⠀⠀⠀⣰⣿⣿⡟⠉⢻⣿⣿⣿⠇]],
  [[ ⠀⣾⣿⡏⠀⢀⣀⣴⣿⡿⠋⠀⠀⠀⠀⣠⣾⣿⣿⠋⠁⠀⢀⣿⣿⡟⠀]],
  [[ ⢸⣿⣿⣧⣀⣼⣿⣿⡟⠁⠀⠀⠀⣠⣾⣿⣿⠛⠛⠀⠀⣾⣿⣿⡟⠀⠀]],
  [[ ⠸⣿⣿⣿⣿⣿⡿⠏⠀⠀⢀⣠⣾⣿⡿⠿⠿⠀⢠⣤⣾⣿⣿⠟⠀⠀⠀]],
  [[ ⠀⠈⠉⠉⠁⠀⢀⣀⣤⣾⣿⣿⠿⠿⠃⠀⣀⣠⣾⣿⣿⡿⠃⠀⠀⠀⠀]],
  [[ ⠀⠳⣶⣶⣶⣿⣿⣿⣿⣿⣿⣏⠀⢀⣀⣠⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀]],
  [[ ⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[ ⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local sigil = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠀⠀  ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⣰⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣾⣿⠀⠀⠶⣽⠖⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⢠⣷⣶⣶⣶⣶⣶⣶⣾⣿⣿⣤⣤⣤⣥⣤⣤⣴⣶⡀⠀⠀]],
  [[⣠⡴⠿⠋⠀⠀⣀⣤⠶⠶⢾⣿⣿⣤⢤⣤⣀⠀⠉⠉⠻⣷⡄⠀]],
  [[⠀⠀⠀⠀⠀⣾⣿⠁⠀⠀⢸⣿⣿⠀⠀⠈⢻⣿⡄⠀⠀⠀⠉⠲]],
  [[⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⢸⣿⣿⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠘⠿⢶⣤⣤⣼⣿⣿⣤⣀⣤⡾⠟⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⢻⣿⡿⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⢀⣴⣾⠋⠀⢸⣿⡇⠀⠈⠳⣦⡀⠀⠀⠀⠀⠀⠀]],
  [[⠤⠤⣤⣶⣾⡿⠟⠁⠀⠀⢸⣿⡇⠀⠀⠀⠙⢿⣶⣄⡀⠀⠀⠀]],
  [[⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠉⠙⠛⠒⠒⠀]],
  [[⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⢸⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠙⠶⠛⠀⠀⢸⣿⣿⣷⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⣶⣷⣄⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local function lineColor(lines, popStart, popEnd)
  local out = {}
  for i, line in ipairs(lines) do
    local hi = 'StartLogo' .. i
    if i > popStart and i <= popEnd then
      hi = 'StartLogoPop' .. (i - popStart)
    elseif i > popStart then
      hi = 'StartLogo' .. (i - popStart)
    end
    table.insert(out, { hi = hi, line = line })
  end
  return out
end

local headers = {
  lineColor(notAll, 0, 0),
  lineColor(gandalf, 0, 0),
  lineColor(poem, 0, 0),
  lineColor(sigil, 0, 0),
  lineColor(theOneRing, 0, 0),
}

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end

local function header_color()
  local lines = {}
  for _, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = 'text',
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = 'center',
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = 'group',
    val = lines,
    opts = { position = 'center' },
  }

  return output
end

local function footer()
  local plugins = #vim.tbl_keys(require('lazy').plugins())
  local v = vim.version()
  local datetime = os.date ' %d-%m-%Y   %H:%M:%S'
  local platform = vim.fn.has 'win32' == 1 and '' or ''
  return string.format('󰂖 %d  %s %d.%d.%d  %s', plugins, platform, v.major, v.minor, v.patch, datetime)
end

local function configure()
  local theme = require 'alpha.themes.theta'
  local themeconfig = theme.config
  local dashboard = require 'alpha.themes.dashboard'
  local buttons = {
    type = 'group',
    val = {
      { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
      { type = 'padding', val = 1 },
      dashboard.button('e', '  New file', '<cmd>ene<CR>'),
      dashboard.button('SPC f', '  Find file'),
      dashboard.button('SPC F', '  Find text'),
      dashboard.button('u', '󱐥  Update plugins', '<cmd>Lazy sync<CR>'),
      dashboard.button('t', '  Install language tools', '<cmd>Mason<CR>'),
      dashboard.button('q', '󰩈  Quit', '<cmd>qa<CR>'),
    },
    position = 'center',
  }

  themeconfig.layout[2] = header_color()
  themeconfig.layout[6] = buttons
  themeconfig.layout[8] = { type = 'text', val = footer(), opts = { position = 'center' } }

  return themeconfig
end

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('alpha').setup(configure())
  end,
}
