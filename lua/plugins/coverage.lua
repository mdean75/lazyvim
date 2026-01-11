return {
  "andythigpen/nvim-coverage",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "Coverage", "CoverageToggle", "CoverageSummary" },
  keys = {
    {
      "<leader>tC",
      function()
        -- Run tests with coverage
        vim.cmd("!go test -coverprofile=coverage.out ./...")
        -- Load coverage into gutter
        require("coverage").load(true)
      end,
      desc = "Test + Show Coverage",
    },
    { "<leader>tc", "<cmd>CoverageToggle<cr>", desc = "Toggle Coverage Display" },
    { "<leader>ts", "<cmd>CoverageSummary<cr>", desc = "Coverage Summary" },
  },
  config = function()
    require("coverage").setup({
      auto_reload = true,
      lang = {
        go = {
          coverage_file = vim.fn.getcwd() .. "/coverage.out",
        },
      },
    })
  end,
}
