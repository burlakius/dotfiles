local status, mind = pcall(require, "mind")
if not status then
	return
end

-- configure autopairs
mind.setup({
	state_path = "~/Projects/MIND/mind.json",
	data_dir = "~/Projects/MIND/data",
})
