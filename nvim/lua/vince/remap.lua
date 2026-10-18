-- opens file tree
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- opens neo-tree
-- vim.keymap.set("n", "<leader>pp", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>")
----  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))

-- uses yank for system clipboard to paste outside of editor
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn.col('.') <= vim.fn.indent('.') + 1 then
        return "<C-d>"  -- unindent
    else
        return "<S-Tab>"
    end
end, { expr = true, desc = "Smart Shift-Tab" })

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>")
vim.keymap.set("n", "<leader>mm", "<cmd>Mason<cr>")
