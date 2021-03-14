require'lspconfig'.elixirls.setup{
	cmd = { "~/.elixir-ls/releases/language_server.sh" };
	filetypes = {'elixir', 'eelixir'};
	root_dir = nvim_lsp.util.root_pattern("mix.exs", ".git");
	settings = {};
	log_level = 0;
}
