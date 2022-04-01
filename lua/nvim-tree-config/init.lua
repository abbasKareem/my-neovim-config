vim.g.nvim_tree_indent_markers = 1 
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_indent_markers = 25
vim.cmd('nnoremap <C-b> :NvimTreeToggle<CR>')
require'nvim-tree'.setup{
  auto_open = 1,
  auto_close = 1
}

