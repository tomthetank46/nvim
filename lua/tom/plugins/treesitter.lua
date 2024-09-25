local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"yaml",
		"markdown",
		"bash",
		"lua",
		"luadoc",
		"vim",
		"vimdoc",
		"dockerfile",
		"gitignore",
		"python",
		"sql",
		"java",
	},
	auto_install = true,
})
