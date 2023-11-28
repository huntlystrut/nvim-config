vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- stop space from moving the cursor in normal/visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<leader>m", "<cmd>lua MinifySourceFile()<CR>")


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
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>') -- save
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>') -- quit
vim.keymap.set('n', '<leader>cb', '<cmd>clo<CR>') -- close buffer
vim.keymap.set('n', '<leader>cab', '<cmd>%bd|e#<CR>') -- close all other buffers except current
vim.keymap.set('v', "<leader>y", "\"+y") -- copy to system clipboard
vim.keymap.set('n', "<leader>Y", "\"+Y") -- copy to system clipboard
vim.keymap.set('n', "Y", "yg$") -- copy to end of line
vim.keymap.set('n', "n", "nzzzv") -- center on search next
vim.keymap.set('n', "N", "Nzzzv") -- center on search prev
vim.keymap.set('n', "J", "mzJ`z") -- join lines without moving cursor
vim.keymap.set('n', "<C-d>", "<C-d>zz") -- scroll down but keep cursor in same place
vim.keymap.set('n', "<C-u>", "<C-u>zz") -- scroll up but keep cursor in same place

-- window navigation
vim.keymap.set('n', "<C-h>", "<C-w>h") -- move to left window
vim.keymap.set('n', "<C-j>", "<C-w>j") -- move to bottom window
vim.keymap.set('n', "<C-k>", "<C-w>k") -- move to top window
vim.keymap.set('n', "<C-l>", "<C-w>l") -- move to right window

-- buffer navigation
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<CR>') -- next buffer
vim.keymap.set('n', '<leader>[', '<cmd>bnext<CR>') -- next buffer

vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>') -- previous buffer
vim.keymap.set('n', '<leader>]', '<cmd>bprevious<CR>') -- previous buffer

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv") -- move line down in visual mode
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv") -- move line up in visual mode

vim.keymap.set('n', '<leader>=', '<cmd>Neoformat<CR>') -- format code

-- packer
vim.keymap.set('n', '<leader>ps', '<cmd>PackerSync<CR>') -- sync packer

-- winpick
vim.keymap.set('n', '<leader>s', "<cmd>lua require('nvim-window').pick()<CR>") -- pick window

-- vimtree
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>') -- toggle tree


-- lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>")

-- Telescope FTFW
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<cr>") -- files tracked in git (good for ignoring node_modules)
vim.keymap.set("n", "<leader>fF", "<cmd>Telescope find_files<cr>") -- finds everythign regardless of git status
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>") -- search for diagnostics in current buffer
vim.keymap.set("n", "<leader>f*", "<cmd>Telescope grep_string<cr>") -- search for string in project
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- search for string in project
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- search for buffer
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>") -- search for marks
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<cr>") -- search for registers
vim.keymap.set("n", "<leader>f.", "<cmd>Telescope current_buffer_fuzzy_find<cr>") -- search in current buffer

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

-- trouble and todo trouble
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<cr>")

vim.keymap.set("v", "<leader>ga", "<cmd>EasyAlign<cr>")
vim.keymap.set("n", "<leader>ga", "<cmd>EasyAlign<cr>")

-- comment
vim.keymap.set('v', '<leader>k', '<Plug>comment_toggle_linewise', {noremap = false})
vim.keymap.set('n', '<leader>k', '<Plug>comment_toggle_linewise', {noremap = false})

-- copilot
vim.keymap.set('i', '<C-.>', '<Plug>copilot-next', {noremap = false})
vim.keymap.set('i', '<C-,>', '<Plug>copilot-previous', {noremap = false})




-- refactoring.nvim
vim.keymap.set("x", "<leader>re", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")


vim.keymap.set("n", "<leader>a", "<cmd>SymbolsOutline<CR>")

-- oil, open current file parent directory
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
