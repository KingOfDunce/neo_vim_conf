--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<esc>', {})

-- Toggle nvim-tree
map('n', 'tn', [[:NvimTreeToggle]], {})

-- Toggle more plugins
map('n', 'tt', [[:TagbarToggle]], {})
map('n', '<F2>', [[:Telescope find_files]], {})
map('n', 'tl', [[:IndentLinesToggle]], {})

-- Terminal
map('n', '<F5>', [[:tabnew<CR>:terminal<CR>A]], {})
map('n', '<F6>', [[:let $VIM_DIR=expand('%:p:h')<CR>:tabnew<CR>:terminal<CR>Acd $VIM_DIR<CR>]], {})
map('t', '<Esc>', [[<C-\><C-n>]], {})

-- Append , ;
map('n', ',', [[A,<esc>]], {})
map('n', ';', [[A;<esc>:w<CR>]], {})
