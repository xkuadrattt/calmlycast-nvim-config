vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal float toggle<CR>")
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', ':Telescope find_files theme=dropdown<CR>')
vim.keymap.set('n', '<leader>of', ':Telescope oldfiles<CR>')
vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>th', ':Telescope colorscheme<CR>')
vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, {})

vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')

vim.keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', {noremap = true, silent = true})

vim.keymap.set('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

vim.keymap.set('n', '<C-/>', ':CommentToggle<CR>')
