-- Telescope (solo si existe)
vim.keymap.set("n", "<C-p>", function()
	local ok, builtin = pcall(require, "telescope.builtin")
	if ok then
		builtin.find_files()
	end
end, { desc = "Buscar archivos" })

vim.keymap.set("n", "<C-S-f>", function()
	local ok, builtin = pcall(require, "telescope.builtin")
	if ok then
		builtin.live_grep()
	end
end, { desc = "Buscar texto" })

-- === Neo-tree ===
vim.keymap.set(
	"n",
	"<C-b>",
	":Neotree filesystem position=float reveal dir=./ toggle<CR>",
	{ desc = "Abrir árbol de archivos" }
)

-- === Oil ===
vim.keymap.set("n", "<C-S-b>", ":Oil --float .<CR>", { desc = "Abrir árbol de archivos" })

-- === LSP ===
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentación flotante" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Ir a implementación" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Formatear buffer" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Mostrar diagnóstico flotante" })

-- === NVIM ===
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- === Gitsigns ===
vim.keymap.set("n", "]g", ":Gitsigns nav_hunk next<CR>")
vim.keymap.set("n", "gph", ":Gitsigns preview_hunk<CR>")

-- === GotoPreview ===
vim.keymap.set(
	"n",
	"gpd",
	"<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
	{ desc = "Preview definition" }
)
vim.keymap.set(
	"n",
	"gpt",
	"<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
	{ desc = "Preview type" }
)
vim.keymap.set(
	"n",
	"gpi",
	"<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
	{ desc = "Preview implementation" }
)
vim.keymap.set(
	"n",
	"gpr",
	"<cmd>lua require('goto-preview').goto_preview_references()<CR>",
	{ desc = "Preview references" }
)
vim.keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { desc = "Close previews" })

-- === Docs ===
vim.keymap.set("n", "<leader>f", ":DocsViewToggle<CR>")
