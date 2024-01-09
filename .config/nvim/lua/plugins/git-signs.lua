return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			yadm = {
				enable = true,
			},

			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},

			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map({ "n", "v" }, "]c", function()
					if vim.wo.diff then
						return "]c"
					end
					vim.schedule(function()
						gs.next_hunk()
					end)
					return "<Ignore>"
				end, { expr = true, desc = "Jump to next hunk" })

				map({ "n", "v" }, "[c", function()
					if vim.wo.diff then
						return "[c"
					end
					vim.schedule(function()
						gs.prev_hunk()
					end)
					return "<Ignore>"
				end, { expr = true, desc = "Jump to previous hunk" })

				-- Actions
				-- visual mode
				map("v", "<leader><Space>s", function()
					gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "stage git hunk" })
				map("v", "<leader><>r", function()
					gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "reset git hunk" })
				-- normal mode

				map("n", "<leader><Space>s", gs.stage_hunk, { desc = "git stage hunk" })
				map("n", "<leader><Space>r", gs.reset_hunk, { desc = "git reset hunk" })
				map("n", "<leader><Space>S", gs.stage_buffer, { desc = "git Stage buffer" })
				map("n", "<leader><Space>u", gs.undo_stage_hunk, { desc = "undo stage hunk" })
				map("n", "<leader><Space>R", gs.reset_buffer, { desc = "git Reset buffer" })
				map("n", "<leader><Space>p", gs.preview_hunk, { desc = "preview git hunk" })
				map("n", "<leader><Space>b", function()
					gs.blame_line({ full = false })
				end, { desc = "git blame line" })
				map("n", "<leader>hd", gs.diffthis, { desc = "git diff against index" })
				map("n", "<leader>hD", function()
					gs.diffthis("~")
				end, { desc = "git diff against last commit" })

				-- Toggles
				map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "toggle git blame line" })
				map("n", "<leader>td", gs.toggle_deleted, { desc = "toggle git show deleted" })

				-- Text object
				map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "select git hunk" })
			end,
		})
	end,
}
