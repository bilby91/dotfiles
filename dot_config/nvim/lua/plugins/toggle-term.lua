return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>td",
        "<cmd>ToggleTerm size=20 dir=%:p:h direction=tab<cr>",
        desc = "Open a horizontal terminal at the Home directory",
      },
    },
    config = true,
  },
}
