-- Líder
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- === General ===
-- === Telescope ===
local ok, telescope = pcall(require, 'telescope.builtin')
if ok then
  vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = 'Buscar archivos' })
  vim.keymap.set('n', '<C-S-f>', telescope.live_grep, { desc = 'Buscar texto' })
end

-- === Neo-tree ===
vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal toggle<CR>', { desc = 'Abrir árbol de archivos' })

-- === LSP ===
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Documentación flotante' })
vim.keymap.set('n', 'gd', vim.lsp.buf.implementation, { desc = 'Ir a implementación' })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'Formatear buffer' })
