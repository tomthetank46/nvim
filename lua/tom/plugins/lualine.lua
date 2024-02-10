local setup, lualine = pcall(require, "lualine")
if not setup then
    return
end

-- could change colors here if i wanted

lualine.setup()
