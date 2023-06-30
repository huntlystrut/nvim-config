function MinifyCSS(file)
    local i,_ = string.find(file, ".css")
    local command = "cleancss " .. file .. " -o " .. string.sub(file,1,i) .. "min.css"
    vim.api.nvim_call_function("jobstart", {{"bash", "-c", command}})
end

function MinifyJS(file)
    local i,_ = string.find(file, ".js")
    local command = "uglifyjs " .. file .. " -c -o " .. string.sub(file,1,i) .. "min.js"
    vim.api.nvim_call_function("jobstart", {{"bash", "-c", command}})
end

function MinifySourceFile()
    local file = vim.api.nvim_call_function("expand", {"%"})

    local isCSS,_ = string.find(file, ".css")
    local isJS,_ = string.find(file, ".js")

    if isCSS == nil and isJS == nil then
        print("not a css or js file")
        return
    end


    if isCSS ~= nil then
        MinifyCSS(file)
        print("minified css file")
        return
    end

    if isJS ~= nil then
        MinifyJS(file)
        print("minified js file")
        return
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


