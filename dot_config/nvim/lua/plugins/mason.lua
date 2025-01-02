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

  -- TODO: Review if this plugin is really needed
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function()
      require("mason").setup()
      require("mason-nvim-dap").setup()
    end,
  },
  -- TODO: Review if this plugin is really needed
  {
    "williamboman/mason-lspconfig.nvim",
  },
}
