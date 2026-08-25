local telescope_setup, telescope = pcall(require, "telescope")

if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")

if not actions_setup then
	return
end

local lga_setup, lga_actions = pcall(require, "telescope-live-grep-args.actions")

if not lga_setup then 
    return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
    extensions = {
        live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = { -- extend mappings
                i = {
                    ["<C-q>"] = lga_actions.quote_prompt(),
                    ["<C-i>"] = lga_actions.quote_prompt({ postgix = " --iglob "}),
                    ["<C-space>"] = lga_actions.to_fuzzy_refine, -- freeze the current list and start a fuzzy search in the frozen list 
                },
            },
        }
    }
})

telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
