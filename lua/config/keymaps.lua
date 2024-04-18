-- Key mappings for Neovim in init.lua

-- Insert mode mappings
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true, silent = true})

-- Normal mode mappings for window navigation
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', {noremap = true, silent = true})

-- Tab navigation and other mappings using leader key
vim.api.nvim_set_keymap('n', '<leader>0', ':tablast<CR>', {noremap = true, silent = true})
for i = 1, 9 do
    vim.api.nvim_set_keymap('n', '<leader>'..i, ':tabn '..i..'<CR>', {noremap = true, silent = true})
end

vim.api.nvim_set_keymap('n', '<leader>h', ':noh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>z', ':Goyo<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ':bp<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ':Git blame<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>a', 'za', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '_', ':NvimTreeResize -20<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '+', ':NvimTreeResize +20<CR>', {noremap = true, silent = true})

-- Resize mappings
vim.api.nvim_set_keymap('n', '<C-down>', ':resize -10<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-up>', ':resize +10<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-right>', ':vertical resize +10<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-left>', ':vertical resize -10<CR>', {noremap = true, silent = true})

-- Visual mode mappings
vim.api.nvim_set_keymap('v', '<Enter>', '<Plug>(EasyAlign)', {})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
vim.api.nvim_set_keymap('n', '-', '<Plug>(choosewin)', {})

-- telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<leader>t', builtin.treesitter, {})
vim.keymap.set('n', '<leader>c', builtin.git_commits, {})

