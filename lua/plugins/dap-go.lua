return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  keys = {
    {
      "<leader>td",
      function()
        require("dap-go").debug_test()
      end,
      desc = "Debug Test",
    },
    {
      "<leader>tD",
      function()
        require("dap-go").debug_last_test()
      end,
      desc = "Debug Last Test",
    },
  },
  config = function()
    require("dap-go").setup()
  end,
}
