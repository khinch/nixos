-- colour scheme
vim.cmd("source $HOME/.config/nvim/colors/root-loops.vim")

-- wayland clipboard
--set clipboard=unnamed

-- Define clipboard configuration
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy --type text/plain",
    ["*"] = "wl-copy --type text/plain",
  },
  paste = {
    ["+"] = "wl-paste --type text/plain",
    ["*"] = "wl-paste --type text/plain",
  },
  cache_enabled = true,
}

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
