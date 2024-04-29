-- Overrides lsp plugin config on LazyVim
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Default config (Don't need to add)
        -- "stylua", "shfmt",
        "prettier",
        "eslint-lsp",
        "emmet-ls",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "lua-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server"
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = true },
      ---@type lspconfig.options
      ---@diagnostic disable-next-line: missing-fields
      servers = {
        ---@diagnostic disable-next-line: missing-fields
        volar = {},
      },
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        tsserver = function(_, opts)
          local mason_registry = require('mason-registry')
          local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path()
          local vue_typescript_plugin_path = vue_language_server_path .. '\\node_modules\\@vue\\language-server\\node_modules\\@vue\\typescript-plugin'
          opts.init_options = {
            plugins = {
              {
                name = '@vue/typescript-plugin',
                location = vue_typescript_plugin_path,
                languages = { 'vue' }
              }
            }
          }
        end
      }
    },
  }
}
