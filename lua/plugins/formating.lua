return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["haskell"] = { "ormolu" },
    },
    formatters = {
      prettier = {
        require_cwd = true,
        cwd = require("conform.util").root_file({
          ".prettierrc.json",
          ".pretierrc",
          ".prettierrc.js",
          "prettier.config.js",
        }),
      },
    },
  },
}
