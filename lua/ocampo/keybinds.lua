local map = vim.keymap.set

-- mapleader key
g.mapleader = " "

-- nohl command
map("n", "<leader>nh", ":nohl<CR>", { desc = "nohl command" })

-- oil
map("n", "-", ":Oil<CR>", { desc = "oil command" })

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader><S-e>", ":NvimTreeFocus<CR>")

-- splits
map("n", "<leader>hs", ":split<CR>", { desc = "Split Window Below", remap = true })
map("n", "<leader>vs", ":vs<CR>", { desc = "Split Window Right", remap = true })
map("n", "<leader>xs", ":only<CR>", { desc = "Close Current Split", remap = true })

-- move to splits using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- resize splits using <ctrl>/<shift> letters
map("n", "<C-e>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<S-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<S-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-S-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- telescope
map("n", "ff", ":Telescope find_files<CR>", { desc = "Find files with telescope" })
map("n", "<leader>sf", ":Telescope find_files<CR>", { desc = "Find files with telescope" })
map("n", "<leader>scl", ":Telescope colorscheme<CR>", { desc = "Find colorscheme with telescope" })
map("n", "<leader>sof", ":Telescope oldfiles<CR>", { desc = "Find old files with telescope" })
map("n", "<leader>sg", ":Telescope live_grep<CR>", { desc = "Live grep files with telescope" })
map("n", "<leader>slp", ":Telescope lsp_document_symbols<CR>", { desc = "N/A" })

-- move lines
map("v", "<S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- none-ls
map("n", "<leader>ft", vim.lsp.buf.format, { desc = "Format document" })

-- comment
map("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
map("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")
map({ "n", "v" }, "<leader>cc", "gcc", { desc = "Comment line", remap = true })

-- lazy
map("n", "<leader>ll", ":Lazy<CR>", { desc = "Open Lazy package manager" })
map("n", "<leader>lu", ":Lazy update<CR>", { desc = "Update lazy pakages" })
map("n", "<leader>li", ":Lazy install<CR>", { desc = "Install lazy pakages" })
map("n", "<leader>ls", ":Lazy sync<CR>", { desc = "Sync lazy pakages" })
map("n", "<leader>lx", ":Lazy clean<CR>", { desc = "Clean lazy pakages" })

-- vim-dadbod
map("n", "<leader>du", ":DBUIToggle<CR>", { desc = "Show and close dbui" })

-- zenmode
map("n", "<leader>z", ":ZenMode<CR>", { desc = "ZenMode enable and ZenMode disable" })

-- new file
map("n", "<leader>fn", ":enew<cr>", { desc = "New File" })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", ":w<CR><esc>", { desc = "Save File" })

-- barbar
map("n", "<leader><TAB>", ":bnext<CR>", { desc = "Next tab" })
map("n", "<leader><leader><TAB>", ":bprev<CR>", { desc = "Previous tab" })
map("n", "<leader>x", ":bd<CR>", { desc = "Close tab" })
map("n", "<leader>b1", ":BufferLineGoToBuffer 1<CR>", { desc = "Go to tab 1" })
map("n", "<leader>b2", ":BufferLineGoToBuffer 2<CR>", { desc = "Go to tab 2" })
map("n", "<leader>b3", ":BufferLineGoToBuffer 3<CR>", { desc = "Go to tab 3" })
map("n", "<leader>b4", ":BufferLineGoToBuffer 4<CR>", { desc = "Go to tab 4" })
map("n", "<leader>b5", ":BufferLineGoToBuffer 5<CR>", { desc = "Go to tab 5" })

-- quit neovim
map("n", "<leader>qq", ":qa<CR>", { desc = "Close nvim" })
map("n", "<leader>wq", ":wqa<CR>", { desc = "Save and Close nvim" })
