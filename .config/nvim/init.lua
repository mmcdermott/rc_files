-- Load general settings
require('settings')

-- Load key mappings
require('keymaps')

-- Load plugins
require("config.lazy")

-- Colorscheme
vim.g.material_style = "darker"
vim.cmd.colorscheme("material")
