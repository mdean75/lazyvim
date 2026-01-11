-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<Tab>",
          accept_word = "<C-Right>",
          accept_line = "<C-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "<C-r>",
          open = "<M-CR>", -- Alt+Enter to open panel
        },
        layout = {
          position = "bottom", -- or "top", "left", "right"
          ratio = 0.4,
        },
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = true,
  },
}
