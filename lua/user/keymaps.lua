vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- stop space from moving the cursor in normal/visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<leader>m", "<cmd>lua CleanCSS()<CR>")


vim.keymap.set('n', '<leader><leader>l', '<cmd>nohlsearch<CR>')
-- go to non-existant file
vim.keymap.set('', 'gf', '<cmd>edit <cfile><CR>')

-- reselect visual selection after indent change
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('n', '<leader>x', '<cmd>!xdg-open %<cr><cr>')
vim.keymap.set('n', '<leader>ve', '<cmd>e /home/huntly/.config/nvim/init.lua<CR>')


-- Here is a utility function that closes any floating windows when you press escape
local function close_floating()
  for _, win in pairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative == "win" then
      vim.api.nvim_win_close(win, false)
    end
  end
end

vim.keymap.set("n", "<esc>", function()
  close_floating()
  vim.cmd(":noh")
end, { silent = true, desc = "Remove Search Highlighting, Dismiss Popups" })

-- vim quick wins
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
vim.keymap.set('n', '<leader>c', '<cmd>clo<CR>')
vim.keymap.set('n', "<leader>y", "\"+y")
vim.keymap.set('v', "<leader>y", "\"+y")
vim.keymap.set('n', "<leader>Y", "\"+Y")
vim.keymap.set('n', "Y", "yg$")
vim.keymap.set('n', "n", "nzzzv")
vim.keymap.set('n', "N", "Nzzzv")
vim.keymap.set('n', "J", "mzJ`z")
vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-u>", "<C-u>zz")

-- windwo movement
vim.keymap.set('n', "<C-h>", "<C-w>h")
vim.keymap.set('n', "<C-j>", "<C-w>j")
vim.keymap.set('n', "<C-k>", "<C-w>k")
vim.keymap.set('n', "<C-l>", "<C-w>l")


vim.keymap.set('n', '<leader>bn', '<cmd>bnext<CR>')
vim.keymap.set('n', '<leader>[', '<cmd>bnext<CR>')

vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>')
vim.keymap.set('n', '<leader>]', '<cmd>bprevious<CR>')

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>=', '<cmd>Neoformat<CR>')

-- packer
vim.keymap.set('n', '<leader>ps', '<cmd>PackerSync<CR>')

-- winpick
vim.keymap.set('n', '<leader>s', "<cmd>lua require('nvim-window').pick()<CR>")

-- vimtree
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

-- lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>")

-- Telescope FTFW
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<cr>") -- files tracked in git (good for ignoring node_modules)
vim.keymap.set("n", "<leader>fF", "<cmd>Telescope find_files<cr>") -- finds everythign regardless of git status
vim.keymap.set("n", "<leader>f*", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<cr>")
vim.keymap.set("n", "<leader>f.", "<cmd>Telescope current_buffer_fuzzy_find<cr>")

-- harpoon keymaps
vim.keymap.set("n", "<leader>hw", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
-- harpoon add files
vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>")
vim.keymap.set("n", "<leader>h1", "<cmd>lua require('harpoon.mark').add_file(1)<cr>")
vim.keymap.set("n", "<leader>h2", "<cmd>lua require('harpoon.mark').add_file(2)<cr>")
vim.keymap.set("n", "<leader>h3", "<cmd>lua require('harpoon.mark').add_file(3)<cr>")
vim.keymap.set("n", "<leader>h4", "<cmd>lua require('harpoon.mark').add_file(4)<cr>")
-- harpoon nav files
vim.keymap.set("n", "<leader>j", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
vim.keymap.set("n", "<leader>k", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
vim.keymap.set("n", "<leader>;", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
vim.keymap.set("n", "<leader>,", "<cmd>lua require('harpoon.ui').nav_next()<cr>")
vim.keymap.set("n", "<leader>.", "<cmd>lua require('harpoon.ui').nav_prev()<cr>")
-- harpoon goto tmux windows
vim.keymap.set("n", "<leader>hb", "<cmd>lua require('harpoon.tmux').gotoTerminal(2)<cr>")
vim.keymap.set("n", "<leader>hg", "<cmd>lua require('harpoon.tmux').gotoTerminal(3)<cr>")

-- trouble and todo trouble
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<cr>")

vim.keymap.set("v", "<leader>ga", "<cmd>EasyAlign<cr>")
vim.keymap.set("n", "<leader>ga", "<cmd>EasyAlign<cr>")

-- copilot
vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)')