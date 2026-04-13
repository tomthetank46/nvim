
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local keymap = vim.keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	-- set keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts)
	keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)
end

-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

vim.lsp.enable('html')

vim.lsp.config('pyright', {
  capabilities = capabilities,
  on_attach = on_attach,
})
vim.lsp.enable('pyright')

vim.lsp.enable('lua_ls', {
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.enable('sqlls', {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.enable('harper_ls', {
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "markdown", "typescript" },
})
