return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Icons for file types (optional)
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Neo-tree setup
    require("neo-tree").setup({
      filesystem = {
        follow_current_file = true, -- Highlight current file in the tree
        hijack_netrw = true,        -- Disable netrw
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added     = "✚", -- Symbol for added files
            modified  = "", -- Symbol for modified files
            deleted   = "✖", -- Symbol for deleted files
          },
        },
      },
    })

    -- Custom key mappings
    vim.api.nvim_set_keymap(
      "n",
      "t", -- Key for opening file under cursor in a new tab
      ":lua require'neo-tree.utils'.open_tab(require'neo-tree.sources.manager'.get_node_under_cursor().path)<CR>",
      { noremap = true, silent = true }
    )

    vim.api.nvim_set_keymap(
      "n",
      "<leader>nt", -- Toggle Neo-tree
      ":Neotree toggle<CR>",
      { noremap = true, silent = true }
    )

    -- Tab management
    vim.api.nvim_set_keymap(
      "n",
      "<leader>tn", -- Go to the next tab
      ":tabnext<CR>",
      { noremap = true, silent = true }
    )

    vim.api.nvim_set_keymap(
      "n",
      "<leader>tp", -- Go to the previous tab
      ":tabprevious<CR>",
      { noremap = true, silent = true }
    )

    vim.api.nvim_set_keymap(
      "n",
      "<leader>tc", -- Close current tab
      ":tabclose<CR>",
      { noremap = true, silent = true }
    )
  end
}
