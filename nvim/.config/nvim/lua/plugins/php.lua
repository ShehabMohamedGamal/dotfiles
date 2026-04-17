return {
  {
    -- Set Laravel Pint as the default PHP formatter with PHP CS Fixer as a fall back.
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "pint", "php_cs_fixer", stop_after_first = true },
      },
      formatters = {
        injected = { options = { ignore_errors = true } },
      },
    }, -- Added the missing closing brace here
  },

  {
    -- Remove phpcs linter.
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },

  {
    -- Add neotest-pest plugin for running PHP tests.
    "nvim-neotest/neotest",
    dependencies = { "V13Axel/neotest-pest" },
    opts = { adapters = { "neotest-pest" } },
  },
}
