-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Move to the Neotree UI in normal mode
--
vim.api.nvim_set_keymap("n", "ff", ":Neotree<CR>", { noremap = true, silent = true })

-- Configure `toggle-term` keymaps
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  "<cmd>ToggleTerm size=20 dir=%:p:h direction=tab<cr>",
  { desc = "Open a terminal in a new tab", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>tv",
  "<cmd>ToggleTerm size=60 dir=%:p:h direction=vertical<cr>",
  { desc = "Open a terminal in a vertical buffer", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>tf",
  "<cmd>ToggleTerm size=20 dir=%:p:h direction=float<cr>",
  { desc = "Open a terminal in a floating window", noremap = true, silent = true }
)

-- Configure `dap` keymaps
--
vim.api.nvim_set_keymap(
  "n",
  "<leader>dd",
  ":DapNew<CR>",
  { desc = "Start a new DAP session", noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { desc = "Continue", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dn", ":DapStepOver<CR>", { desc = "Step over", noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>db",
  ":DapToggleBreakpoint<CR>",
  { desc = "Toggle breakpoint", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>dt",
  ":DapTerminate<CR>",
  { desc = "Terminate DAP session", noremap = true, silent = true }
)
