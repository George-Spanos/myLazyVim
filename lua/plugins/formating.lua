return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    table.insert(opts.formatters_by_ft, {
      haskell = { "ormolu" },
    })
    table.insert(opts.formatters, {
      prettier = {
        require_cwd = true,
        cwd = require("conform.util").root_file({
          ".prettierrc",
          ".prettierrc.json",
          ".prettierrc.yml",
          ".prettierrc.yaml",
          ".prettierrc.json5",
          ".prettierrc.js",
          ".prettierrc.cjs",
          ".prettierrc.mjs",
          ".prettierrc.toml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }),
      },
    })
    return opts
  end,
}
