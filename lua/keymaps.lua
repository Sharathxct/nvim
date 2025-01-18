-- vim.keymap.set({ 'n', 'v', 'i', 'l', 'c', 'o', 't' }, '<C-[>', '<esc>')
-- vim.keymap.set({ 'n', 'v', 'i', 'l', 'c', 'o', 't', 'x', 's' }, '<C-[>', '<Esc>')

-- Move Lines
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

vim.keymap.set('x', 'p', '"_dP', { noremap = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>x', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bb', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
-- vim.keymap.set("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete Buffer' })
vim.keymap.set('n', '<leader>bD', '<cmd>:bd<cr>', { desc = 'Delete Buffer and Window' })

-- quit
vim.keymap.set('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

-- flutter
vim.keymap.set('n', '<leader>F', '<cmd>FlutterRun<cr>', { desc = 'Flutter: Run Command' })

-- better indenting
-- vim.keymap.set('v', '<', '<gv')
-- vim.keymap.set('v', '>', '>gv')

-- vim.keymap.set('n', '<leader>-', '<C-W>s', { desc = 'Split Window Below', remap = true })
vim.keymap.set('n', '<leader>|', '<C-W>v', { desc = 'Split Window Right', remap = true })

-- vim.keymap.set('n', '<leader>ct', ':Telescope colorscheme<cr>')
-- vim.keymap.set('n', '<leader>l', ':Lazy<cr>')

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
