local lspconfig = require'lspconfig'

lspconfig.elixirls.setup{
  cmd = { "~/.elixir-ls/release/language_server.sh" };
  filetypes = {'elixir', 'eelixir'};
  root_dir = lspconfig.util.root_pattern("mix.exs", ".git");
  settings = {};
  log_level = 0;
}
