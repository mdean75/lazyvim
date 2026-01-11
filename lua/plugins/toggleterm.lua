return {
  -- Disable snacks terminal
  {
    "folke/snacks.nvim",
    opts = {
      terminal = { enabled = false },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<c-/>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
      { "<leader>ftt", "<cmd>ToggleTerm<cr>", desc = "Terminal (toggleterm)" },
      --   -- Quick split keybindings
      --   { "<leader>Th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "New terminal (horizontal)" },
      --   { "<leader>Tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "New terminal (vertical)" },
      { "<leader>ftf", "<cmd>ToggleTerm direction=float<cr>", desc = "New terminal (float)" },
      -- htop terminal
      {
        "<leader>ftH",
        function()
          _HTOP_TOGGLE()
        end,
        desc = "htop",
      },
      --   -- Add custom layout keymap
      --   {
      --     "<leader>Tl",
      --     function()
      --       -- Create new tab
      --       -- vim.cmd("tabnew")
      --
      --       -- Open terminal 1
      --       vim.cmd("ToggleTerm 1 direction=tab")
      --       --          vim.cmd("startinsert")
      --
      --       -- Open terminal 2 (top right)
      --       vim.cmd("ToggleTerm 2 direction=horizontal")
      --       --vim.cmd("startinsert")
      --
      --       vim.cmd("wincmd l") -- move to right window
      --
      --       -- Open terminal 3 (bottom right)
      --       vim.cmd("ToggleTerm 3 direction=vertical")
      --       vim.cmd("startinsert")
      --
      --       -- Optional: adjust window sizes
      --       -- vim.cmd("wincmd h") -- go back to left window
      --       -- vim.cmd("vertical resize 50") -- make left window 50% width
      --     end,
      --     desc = "Open Terminal Layout",
      --   },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- Create htop terminal
      local Terminal = require("toggleterm.terminal").Terminal
      local htop = Terminal:new({
        cmd = "htop",
        hidden = true,
        direction = "float",
        float_opts = {
          border = "curved",
        },
        on_open = function(term)
          vim.cmd("startinsert!")
        end,
      })

      function _HTOP_TOGGLE()
        htop:toggle()
      end
    end,
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-/>]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        windblend = 0,
      },
    },
  },
}
