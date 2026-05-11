return {
  {
    "sminrana/nvim-filediff",
    event = "VeryLazy",
    config = function()
      local filediff = require("filediff")

      vim.keymap.set("n", "<leader>fd", "<cmd>FileDiff<CR>", { desc = "Diff two files" })
      vim.keymap.set("n", "<leader>fi", "<cmd>FileDiffInput<CR>", { desc = "Diff via input paths" })
      vim.keymap.set("n", "<leader>fo", "<cmd>FolderDiff<CR>", { desc = "Diff two folders" })
    end,
  },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = {},
    ---@diagnostic enable: missing-fields
  },
}
