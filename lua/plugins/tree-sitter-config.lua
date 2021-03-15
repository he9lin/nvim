local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.elixir = {
  install_info = {
    url = "~/.elixir-ts", -- local path or git repo
    files = {"src/parser.c"}
  },
  used_by = {"eelixir"} -- additional filetypes that use this parser
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },
  rainbow = {
    enable = false
  }
}

