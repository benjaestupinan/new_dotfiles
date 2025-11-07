-- Telescope (solo si existe)
vim.keymap.set('n', '<C-p>', function()
  local ok, builtin = pcall(require, 'telescope.builtin')
  if ok then builtin.find_files() end
end, { desc = 'Buscar archivos' })

vim.keymap.set('n', '<C-S-f>', function()
  local ok, builtin = pcall(require, 'telescope.builtin')
  if ok then builtin.live_grep() end
end, { desc = 'Buscar texto' })

-- === Neo-tree ===
vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal toggle<CR>', { desc = 'Abrir árbol de archivos' })

-- === LSP ===
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Documentación flotante' })
vim.keymap.set('n', 'gd', vim.lsp.buf.implementation, { desc = 'Ir a implementación' })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'Formatear buffer' })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Mostrar diagnóstico flotante" })
