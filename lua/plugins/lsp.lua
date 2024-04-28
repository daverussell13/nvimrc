-- Overrides lsp plugin config on LazyVim
return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Default config (Don't need to add)
        --"stylua", "shfmt",
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
}
