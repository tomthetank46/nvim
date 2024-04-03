local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

-- could change colors here if i wanted

lualine.setup({
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
	},
	inactive_sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
	},
})
