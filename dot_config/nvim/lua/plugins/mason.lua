return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "ruby-lsp",
        "rubocop",
        "erb-formatter",
        "erb-lint",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
}
