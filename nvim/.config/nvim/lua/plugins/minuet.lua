return {
  {
    "milanglacier/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        provider = "openai_fim_compatible",
        n_completions = 1,
        context_window = 256,
        request_timeout = 6,
        throttle = 500,
        debounce = 250,
        notify = "warn",

        provider_options = {
          openai_fim_compatible = {
            name = "LMStudio",
            end_point = "http://localhost:1234/v1/completions",
            model = "qwen2.5-coder-3b",
            api_key = "TERM",
            stream = true,
            optional = {
              max_tokens = 56,
              top_p = 0.9,
              stop = { "\n\n" },
            },
          },
        },
      })
    end,
  },

  {
    "saghen/blink.cmp",
    version = "1.*",
    optional = true,
    opts = {
      keymap = {
        ["<A-y>"] = {
          function(cmp)
            cmp.show({ providers = { "minuet" } })
          end,
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "minuet" },
        providers = {
          minuet = {
            name = "minuet",
            module = "minuet.blink",
            async = true,
            timeout_ms = 6000,
            score_offset = 50,
          },
        },
      },
      completion = {
        trigger = { prefetch_on_insert = false },
      },
    },
  },
}
