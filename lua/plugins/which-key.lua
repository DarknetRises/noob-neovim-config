return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    {
      mode = "n", -- NORMAL mode
      -- prefix: use "<leader>f" for example for mapping everything related to finding files
      -- the prefix is prepended to every mapping part of `mappings`
      prefix = "",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = false, -- use `nowait` when creating keymaps
      expr = false,   -- use `expr` when creating keymaps
    }
  },

  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>f"] = { ":lua vim.lsp.buf.format()<CR>", "Format the file" },
      ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find File" },
      ["<leader>fr"] = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
      ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
    })
  end
}
