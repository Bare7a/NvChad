require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<A-up>", ":wincmd k<CR>")
map("n", "<A-down>", ":wincmd j<CR>")
map("n", "<A-left>", ":wincmd h<CR>")
map("n", "<A-right>", ":wincmd l<CR>")

for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end
