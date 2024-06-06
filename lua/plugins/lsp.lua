local nvim_lsp = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
    "mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  opts = {
    servers = {
      denols = {
        root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
      },
    },
    inlay_hints = {
      enabled = false,
    },
  },
}
