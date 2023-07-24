-- useful vars
local opts = { noremap = true, silent = true }


-- normal mode remaps
vim.g.mapleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua", opts)
vim.keymap.set("n", "<leader>pf", ":Files<CR>", opts)



vim.keymap.set("n", "<C-p>", ":GFiles<CR>", opts)
vim.keymap.set("n", "<C-o>", ":copen<CR>", opts)
vim.keymap.set("n", "<C-j>", ":cnext<CR>", opts)
vim.keymap.set("n", "<C-k>", ":cprev<CR>", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)


vim.keymap.set("n", "<n>", "nzzzv", opts)
vim.keymap.set("n", "<N>", "Nzzzv", opts)

-- visual mode remaps
vim.keymap.set("x", "<leader>p", "\"_dP", opts)

vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("n", "<Q>", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>t !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
