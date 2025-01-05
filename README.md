# My Neovim Configuration

Welcome to my Neovim configuration repository! This setup includes a well-curated set of plugins for enhanced coding productivity, aesthetics, and usability. Whether you're a seasoned developer or just getting started, this config will elevate your Neovim experience.

---

## 📖 How to Use

To get started with this Neovim configuration, follow these simple steps:

1. Open your terminal.
2. Clone this repository to your Neovim configuration directory:
   ```bash
   git clone https://github.com/coci/my-nvim.git ~/.config/nvim
   ```
3. Launch Neovim:
   ```bash
   nvim
   ```

That's it! You're ready to enjoy your enhanced Neovim setup. 🎉

---

## ➕ How to Add Plugins

Adding new plugins to this configuration is straightforward. Simply create a new Lua file for the plugin under the `~/.config/nvim/lua/plugins` directory.

1. Navigate to the plugins folder:
   ```bash
   cd ~/.config/nvim/lua/plugins
   ```
2. Create a new file for your plugin:
   ```bash
   touch {plugin-name}.lua
   ```
3. Add the plugin configuration inside this file. For example:
   ```lua
   return {
       "author/plugin-name",
       config = function()
           -- Plugin-specific configuration here
       end
   }
   ```

The `lazy` package manager will automatically detect and load the new plugin.

---

## 🔧 How to Edit Keymaps

To customize or edit keymaps, update the following file:

```bash
~/.config/nvim/lua/config/keymap.lua
```

You can define your key mappings inside this file to tailor your Neovim experience to your workflow.

---

## 🛠️ Pre-installed Plugins

This configuration comes pre-installed with the following plugins:

### Plugin Manager
- **[lazy.nvim](https://github.com/folke/lazy.nvim)**: Lightweight and powerful plugin manager.

### Essential Features
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Automatically opens and closes brackets, curly braces, and parentheses.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Code completion framework.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Easy setup for Neovim's built-in LSP.
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: LSP, DAP, and Linter installer and manager.

### UI Enhancements
- **[github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)**: A beautiful GitHub-inspired color scheme.
- **[dressing.nvim](https://github.com/stevearc/dressing.nvim)**: Enhanced UI for Neovim dialogs.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: A blazing fast and easy-to-configure status line.
- **[vim-devicons](https://github.com/ryanoasis/vim-devicons)**: File-type icons for better visual cues.
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)**: Customizable splash screen for Neovim.

### File Management and Navigation
- **[nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)**: File explorer for Neovim.
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: Fuzzy finder and picker.
- **[harpoon](https://github.com/ThePrimeagen/harpoon)**: Quick file navigation.

### Syntax Highlighting and Treesitter
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting and code parsing.

### Python Development
- **[venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim)**: Easy virtual environment selection for Python projects.

---

## 🎨 Customization
This configuration is designed to be modular and easy to customize. Feel free to tweak the settings, add your favorite plugins, and make it your own.

Happy coding! 🚀

