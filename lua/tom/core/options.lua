local opt = vim.opt -- concise

-- python
vim.cmd("let g:python3_host_prog = expand($PYTHONVENV)")

-- line numbers
opt.number = true
vim.cmd([[
	augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
		autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu		       | set nornu | endif
	augroup END
]])

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- Show a few lines of context around the cursor. Note that this makes the
-- text scross if you mouse-click near the start or end of the window.
opt.scrolloff = 5

-- From iggredible/Learn-Vim
opt.compatible = false
opt.hidden = true
