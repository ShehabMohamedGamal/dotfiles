return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Define our custom Ollama indicator
      local ollama_status = {
        function()
          -- Use get_clients for Neovim 0.10+ compatibility
          local clients = vim.lsp.get_clients({ bufnr = 0 })
          for _, client in ipairs(clients) do
            if client.name == "llm-ls" then
              return "🤖 Ollama"
            end
          end
          return ""
        end,
        color = { fg = "#a6e3a1" }, -- A nice subtle green
      }

      -- Inject it into the right side of Lualine (lualine_x)
      table.insert(opts.sections.lualine_x, 1, ollama_status)
    end,
  },
}
