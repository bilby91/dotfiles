return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          enabled = true,
        },
        eslint = {
          enabled = true,
        },
      },
    },
  },
}
