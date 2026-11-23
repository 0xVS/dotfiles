-- nvim-treesitter (main branch / rewrite)
require("nvim-treesitter").setup {}

-- Treesitter based indentation (experimental, see :help nvim-treesitter)
vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

vim.api.nvim_create_augroup("nvim-treesitter-indent", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "nvim-treesitter-indent",
	callback = function(args)
		-- run after the shipped ftplugins so they cannot override it again
		local ft = args.match
		if ft == "help" or ft == "tex" or ft == "latex" then
			vim.bo[args.buf].indentexpr = ""
		else
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
