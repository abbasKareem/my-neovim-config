local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  --x = {":bdelete<CR>", "Close"},
  c = {"<cmd>Bdelete!<CR>", "Close"},
  E = {":e ~/.config/nvim/init.lua<CR>", "Edit config"},
  f = {":Telescope find_files<CR>", "Telescope find files"},
  r = {":Telescope live_grep<CR>", "Telescope Live Grep"},
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
    --R = {'<cmd>Lspsaga rename<cr>', "Rename"},
    R = {'<cmd>lua vim.lsp.buf.rename()<cr>', "Rename"},
    --a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<cr>', "Code Action"},
    --e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', "Show Line Diagnostics"},
    --n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
    n = {'<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', "Go To Next Diagnostic"},
    --N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"}
    N = {'<cmd>lua .vim.lsp.diagnostic.goto_prev()<cr>', "Go To Previous Diagnostic"}
  },
    z = {
        name = "Focus",
        z = {":ZenMode<cr>", "Toggle Zen Mode"},
        t = {":Twilight<cr>", "Toggle Twilight"}
      }

}

local opts = {prefix = '<leader>'}


wk.register(mappings, opts)
