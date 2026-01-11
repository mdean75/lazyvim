-- Description: Configuration for telescope-undo.nvim plugin

return {
  "debugloop/telescope-undo.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>uu", "<cmd>Telescope undo<cr>", desc = "Undo History" },
  },
  config = function()
    require("telescope").load_extension("undo")
    require("telescope").setup({
      extensions = {
        undo = {
          use_delta = true,
          side_by_side = true,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.8,
          },
          mappings = {
            i = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
            n = {
              ["<CR>"] = require("telescope-undo.actions").restore,
            },
          },
        },
      },
    })
  end,
}
