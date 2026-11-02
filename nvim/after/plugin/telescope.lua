-- telescope.nvim
require("telescope").setup {}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Search for files in git using ctrl p" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })
vim.keymap.set("n", "<leader>fe", builtin.buffers, { desc = "Telescope Buffers" })
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("grep > ") });
end)
