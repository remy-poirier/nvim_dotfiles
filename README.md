# nvim_dotfiles

Hello, I work as a software developer and I started to use Neovim late 2023.
I would like to share my neovim config files here so I can re-use them on many computers. Feel free to tell me if you see some mistakes.
This simple repository will host my neovim setup files, you can use my config by pasting content of `nvim` folder into your own `.config/nvim`, you should erase your config so there are no conflict between configs

## Packages used

- [autopairs](https://github.com/windwp/nvim-autopairs): allow parentheses and bracket to auto close when inserting one
- [catppuccin](https://github.com/catppuccin/nvim): colorscheme
- [mini.comment](https://github.com/echasnovski/mini.comment): Allows quick commenting with shortcut
- [copilot](https://github.com/github/copilot.vim): get completion for code with AI 
- [dressing](https://github.com/stevearc/dressing.nvim): UI changes for vim.ui.select and vim.ui.input
- [flash](https://github.com/folke/flash.nvim): Better searching experience for me
- [Harpoon](https://github.com/ThePrimeagen/harpoon): Quickly navigate between marked files
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim): Setup LSP for code diagnostic, autocompletion and so much IDE-like cool features
- [lualine](https://github.com/nvim-lualine/lualine.nvim): Nice and customizable status line
- [netrw-icons](https://github.com/prichrd/netrw.nvim): Simply add icons to netrw file explorer
- [nvim-notify](https://github.com/rcarriga/nvim-notify): Add notification to nvim
- [surround](https://github.com/kylechui/nvim-surround): Add possibility to surround motion with chars like (,[,{,", '
- [telescope](https://github.com/nvim-telescope/telescope.nvim): Fuzzy finder within folder, with search and so much cool features
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter): Allow code highlighting in a so precise way
- [vimbegood](https://github.com/ThePrimeagen/vim-be-good): Provides some tutorials to improve vim motions
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Add bunch of icons to some packages (Telescope, nvim-notify, lualine...)

## Mappings

Global (re)mappings are defined in `lua/remypoirier/remap.lua`
Package (re)mappings are defined under `after/plugin/${plugin_name}.lua`


## Settings override

Those settings are defined in `lua/remypoirier/set.lua`
