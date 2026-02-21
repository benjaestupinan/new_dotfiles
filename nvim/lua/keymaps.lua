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
vim.keymap.set('n', '<C-b>', ':Neotree filesystem position=float reveal dir=./ toggle<CR>', { desc = 'Abrir árbol de archivos' })

-- === Oil ===
vim.keymap.set('n', '<C-S-b>', ':Oil --float .<CR>', { desc = 'Abrir árbol de archivos' })

-- === LSP ===
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Documentación flotante' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Ir a implementación' })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'Formatear buffer' })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Mostrar diagnóstico flotante" })

-- === NVIM ===
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- === BARBAR ===
vim.keymap.set('n', '<C-1>', ':BufferGoto 1<CR>')
vim.keymap.set('n', '<C-2>', ':BufferGoto 2<CR>')
vim.keymap.set('n', '<C-3>', ':BufferGoto 3<CR>')
vim.keymap.set('n', '<C-4>', ':BufferGoto 4<CR>')
vim.keymap.set('n', '<C-5>', ':BufferGoto 5<CR>')
vim.keymap.set('n', '<C-6>', ':BufferGoto 6<CR>')
vim.keymap.set('n', '<C-7>', ':BufferGoto 7<CR>')
vim.keymap.set('n', '<C-8>', ':BufferGoto 8<CR>')
vim.keymap.set('n', '<C-9>', ':BufferGoto 9<CR>')
vim.keymap.set('n', '<C-q>', ':BufferClose<CR>')
