require("config.keymap")
require("config.lazy")



vim.cmd([[
  autocmd BufWinEnter * if len(tabpagebuflist()) == 0 && &filetype == '' | Alpha | endif
]])

