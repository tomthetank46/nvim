local gitblame_setup, gitblame = pcall(require, "gitblame")

if not gitblame_setup then
	return
end

gitblame.setup({
	message_template = "    <author> / <date> / <summary> / <sha>",
	date_format = "%r / %a, %b %d %Y @ %X",
})
