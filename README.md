
# Quick Migration from Vi/Vim to Neovim

This guide is designed for those who wish to understand Neovim's structure, configure it using Lua, and migrate from legacy vimrc. Drawing from my own experience of using Vim for 20 years, I believe you can upgrade your Vim configuration to Neovim/Lua in just 20 minutes with confidence.

## Installation

1. **Install Neovim:**
   Ensure Neovim is [installed](https://github.com/neovim/neovim/blob/master/INSTALL.md).

2. **Clone the Project:**
   Clone this repository and place it under XDG_CONFIG_HOME.
   ```sh
   git clone git@github.com:chagel/nvim-bootstrap.git ~/.config/nvim-bootstrap
   ```

3. **Start Neovim:**
   Launch Neovim with the following command:
   ```sh
   NVIM_APPNAME="nvim-bootstrap" nvim
   ```
   Neovim supports named instances and will use the corresponding configs under the `nvim-bootstrap` folder.

If everything is set up correctly, you will see a modern Neovim with elegant themes and plugins.

![neovim](https://pbs.twimg.com/media/GLa9cNZbsAALVGA?format=jpg&name=4096x4096)

## Explanation

### File Structure

The entry file is `init.lua`, which calls other configuration files. The main settings are located in the `lua` folder.

#### Configuration Types

There are three types of configurations for Vim/Neovim:

- **Plugins**
- **Mappings**
- **Options**

Within the `lua` folder, there are `config` and `plugins` directories.

- **plugins:** Contains all Vim plugins, each in a separate Lua file.
- **config:** Contains all configuration settings.

The `init.lua` file initializes basic settings for the mapleader and the [Lazy.nvim](https://www.lazyvim.org/) plugin manager.

- `keymaps.lua` is for all shortcuts.
- `options.lua` is for Vim options.
- `settings.lua` contains other settings like functions.

### Updating Configurations

To update your configurations, I recommend using LLM and GPT for syntax migration. Separate your original Vim configurations into the three types mentioned above. Copy the options and settings, and use ChatGPT to convert them into Lua and Neovim-compatible formats.

For plugins, you can also use ChatGPT for migration. Start with the basics without options and customize them later.

Example:
```lua
return {
  'github/copilot.vim'
}
```

Group similar plugins together in one file (e.g., `tpope.lua` as a salute to Tim Pope).

I hope this clarifies some concepts and provides you with a quick start for learning the new tricks of Neovim/Lua.

---

Feel free to reach out if you need further assistance. Happy coding!
