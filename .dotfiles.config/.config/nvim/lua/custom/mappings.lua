---@type MappingsTable
local M = {}

M.tabufline = {

  n = {
    -- cycle through buffers
    ["<A-.>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<A-,>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<A-w>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.lazygit = {

  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },
  },
}

M.liveserver = {
  n = {
    ["<leader>ls"] = { "<cmd> LiveServerStart <CR>", "LiveServerStart" },
  },
}

-- more keybinds!

return M
