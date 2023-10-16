-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.opt.foldmethod = "expr"                     -- default is "normal"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- default is ""
vim.opt.foldenable = false
vim.opt.mouse = 'nvi'

lvim.builtin.which_key.setup.plugins.presets.z = true
lvim.builtin.telescope.theme = "center"
lvim.format_on_save = true

lvim.lsp.buffer_mappings.normal_mode.gh = { vim.lsp.buf.hover, "Show documentation" }
lvim.lsp.buffer_mappings.normal_mode.gv = { ":vsplit | lua vim.lsp.buf.implementation()<cr>",
  "Goto implementation vsplit" }
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.lualine.sections.lualine_c = { { 'filename', path = 1 } }
lvim.builtin.gitsigns.opts.current_line_blame = true
-- lvim.transparent_window = true
-- lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm direction=horizontal size=30<cr>", "Terminal" }


local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- local status_ok, toggleterm = pcall(require, "toggleterm")
-- if not status_ok then
--   return
-- end

-- toggleterm.setup({
--   size = 30,
--   open_mapping = [[<c-\>]],
--   direction = "horizontal"

-- })


lvim.plugins = {
  { "arcticicestudio/nord-vim" },
  { "sainnhe/edge" }
}

-- lvim.colorscheme = ''
