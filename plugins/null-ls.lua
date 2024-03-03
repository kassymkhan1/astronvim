return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,

      null_ls.builtins.diagnostics.alex.with {
        -- pass arguments to modify/override the null-ls builtin configuration
        filetypes = { "markdown" },
        extra_args = { "--config-path", vim.fn.expand "~/.config/astronvim-user/tool-config/alexrc.yaml" },
      },
      null_ls.builtins.formatting.markdownlint.with {
        -- pass arguments to modify/override the null-ls builtin configuration
        filetypes = { "markdown" },
        extra_args = { "--config-path", vim.fn.expand "~/.config/astronvim-user/tool-config/markdownlint.yaml" },
      },
    }
    return config -- return final config table
  end,
}
