function CleanCSS()
  local file = vim.api.nvim_call_function("expand", {"%"})
  i,_ = string.find(file, ".css")
  if i ~= nil then
      local command = "cleancss " .. file .. " -o " .. string.sub(file,1,i) .. "min.css"
      vim.api.nvim_call_function("jobstart", {{"bash", "-c", command}})
      print("minified css file")
  else
      print("not css")
  end
end



require 'user.options'
require 'user.keymaps'
require 'user.plugins'

cfg = {…}  -- add you config here
require "lsp_signature".setup(cfg)

-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = true,    -- Non focused panes set to alternative background
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})


--vim.cmd("colorscheme dayfox")
--vim.o.background = "light" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
--vim.cmd([[colorscheme everforest]])


