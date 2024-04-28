-- Overriding LazyVim plugins config
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
    },
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = false
        },
        hijack_netrw_behavior = "open_current"
      }
    }
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    opts =  {
      options = {
        theme = "gruvbox_dark"
      }
    }
  },
}
