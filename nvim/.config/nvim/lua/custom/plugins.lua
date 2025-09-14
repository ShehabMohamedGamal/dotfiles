return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").bashls.setup({})
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.shellcheck, -- ShellCheck integration
        },
      })
    end,
  },

{
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.shfmt, -- shfmt integration
        },
      })
    end,
  },

 {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "bash" }, -- Ensure Bash is installed
    },
  },

}
