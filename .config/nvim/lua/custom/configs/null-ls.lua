local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    -- Formatting
    null_ls.builtins.formatting.ruff,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.yamlfmt,
    null_ls.builtins.formatting.taplo,

    -- Diagnostics
    null_ls.builtins.diagnostics.ruff,

    -- TODO: do the following with ruff to use current activate venv
    --null_ls.builtins.diagnostics.mypy.with({
    --  extra_args = function()
    --  local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
    --  return { "--python-executable", virtual .. "/bin/python3" }
    --  end,
    --}),
  },
  on_attach = function(client, bufnr)
    vim.api.nvim_clear_autocmds({
      group = augroup,
      buffer = bufnr,
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
}
return opts
