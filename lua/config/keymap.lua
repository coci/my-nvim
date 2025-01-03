vim.g.mapleader = ","

vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- open nvim-tree
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>m", ":wincmd p<CR>", { noremap = true, silent = true })

-- sync os copy+paste with nvim
vim.o.clipboard = "unnamedplus"
vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

-- shortcut in nvim tree to open file under cursor in vertically
vim.keymap.set('n', '<leader>o', function()
      local api = require('nvim-tree.api')
  api.node.open.vertical()
end, { desc = "Open file in vertical split from NvimTree" })


-- go to splash screen shortcut
vim.api.nvim_set_keymap('n', '<leader>sp', ':Alpha<CR>', { noremap = true, silent = true })

