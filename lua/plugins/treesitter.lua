-- Overrides lsp plugin config on LazyVim
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- Default config (Don't need to add) --
        -- "bash", "c", "diff", "html", "javascript", "jsdoc", "json", "jsonc", "lua",
        -- "luadoc", "luap", "markdown", "markdown_inline", "python", "query", "regex",
        -- "toml", "tsx", "typescript", "vim", "vimdoc", "xml", "yaml",
        "css",
        "scss",
        "gitignore",
        "sql",
        "vue"
      },
    }
  },
}
