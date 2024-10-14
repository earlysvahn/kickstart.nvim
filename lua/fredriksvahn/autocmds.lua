local utils_path = vim.fn.stdpath 'config' .. '/lua/fredriksvahn/utils/'

local files = vim.fn.globpath(utils_path, '*.lua', true, true)
for _, file in ipairs(files) do
  local module_name = file:match '.*/(.*)%.lua$'
  if module_name then
    local ok, _ = pcall(require, 'fredriksvahn.utils.' .. module_name)
    if not ok then
      print('Error loading module: ' .. module_name)
    end
  end
end
