-- formatters.lua
return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      php = { "phpcbf" },
    },
    -- 1. ENABLE AUTO FORMATTING ON SAVE
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 5000, -- Increased timeout (default is 500ms) as PHP tools can be slow
      lsp_fallback = true,
    },
    formatters = {
      ["php-cs-fixer"] = {
        command = "php-cs-fixer",
        args = {
          "fix",
          "--rules=@PSR12",
          "$FILENAME",
        },
        stdin = false,
      },
    },
    notify_on_error = false,
  },
}
