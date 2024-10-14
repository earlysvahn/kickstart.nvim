local M = {}

-- Helper function to check if a file exists
local function file_exists(filepath)
  local f = io.open(filepath, 'r')
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Helper function to find the nearest .csproj file
local function find_csproj_path(starting_dir)
  local path_sep = package.config:sub(1, 1) -- Get the path separator for the current system
  local current_dir = starting_dir

  while current_dir ~= '/' and current_dir ~= '' do
    -- Check if there's a .csproj file in the current directory
    for _, file in ipairs(vim.fn.readdir(current_dir)) do
      if file:match '%.csproj$' then
        return current_dir
      end
    end
    -- Move up one level
    current_dir = current_dir:match('(.*)' .. path_sep)
  end
  return nil
end

-- Main function to move `using` directives to GlobalUsings.cs
function M.move_usings_to_global()
  local current_file = vim.fn.expand '%:p' -- Get the current file path
  local using_pattern = '^using%s+[%w%.]+;' -- Pattern to match using directives

  -- Find the nearest .csproj directory path
  local project_root = find_csproj_path(vim.fn.expand '%:p:h')

  if not project_root then
    print 'No .csproj file found in the directory hierarchy. Aborting.'
    return
  end

  -- Construct the path for GlobalUsings.cs in the project root
  local global_usings_file = project_root .. '/GlobalUsings.cs'

  -- If GlobalUsings.cs exists, ask if the user wants to move usings there
  if file_exists(global_usings_file) then
    print('Found GlobalUsings.cs at path: ' .. global_usings_file)
    local choice = vim.fn.input 'Move `using` directives here? (y/n): '
    if choice:lower() ~= 'y' then
      print 'Aborted.'
      return
    end
  else
    -- If GlobalUsings.cs is not found, ask if it should be created
    local choice = vim.fn.input 'GlobalUsings.cs not found in project root. Create it? (y/n): '
    if choice:lower() ~= 'y' then
      print 'Aborted.'
      return
    else
      vim.fn.writefile({}, global_usings_file) -- Create an empty GlobalUsings.cs
    end
  end

  -- Open the current file and read its contents
  local lines = vim.fn.readfile(current_file)
  local new_lines = {} -- Lines to write back to the file
  local usings_to_move = {} -- Gather `using` statements to move

  for _, line in ipairs(lines) do
    if line:match(using_pattern) then
      -- Replace `using` with `global using`
      local global_using = line:gsub('using', 'global using')
      table.insert(usings_to_move, global_using)
    else
      table.insert(new_lines, line) -- Keep other lines in the current file
    end
  end

  -- Write the updated lines back to the current file
  vim.fn.writefile(new_lines, current_file)

  -- If there are no usings to move, exit
  if #usings_to_move == 0 then
    print 'No `using` statements found to move.'
    return
  end

  -- Read existing global usings and append new ones
  local existing_global_usings = vim.fn.readfile(global_usings_file)
  for _, using in ipairs(usings_to_move) do
    table.insert(existing_global_usings, using)
  end

  -- Write back to GlobalUsings.cs
  vim.fn.writefile(existing_global_usings, global_usings_file)
  print('Moved `using` directives to GlobalUsings.cs in project: ' .. project_root)
end

return M
