return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    window = {
      auto_expand_width = true,
      file_size = {
        enabled = false,
      },
      last_modified = {
        enabled = false,
      },
    },
    filesystem = {
      filtered_items = {
        always_show = {
          ".github",
        },
      },
    },
  },
}
