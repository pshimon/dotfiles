vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.showmode = true


vim.opt.clipboard = 'unnamedplus'
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.opt.termguicolors = true
vim.cmd('colorscheme evening')

vim.cmd('syntax enable')

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "plaintex", "latex" }, -- adjust if needed
  callback = function()
    vim.bo.filetype = "tex"
  end,
})

--my luasnip configuration
vim.cmd[[
 "Use Tab to expand and jump through snippets 
 imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  
 smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>' 

 " Use Shift-Tab to jump backwards through snippets 
 imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>' 
 smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
 ]]
 -- Load all snippets from the nvim/LuaSnip directory at startup 
 require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/luasnips/"})
  -- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
