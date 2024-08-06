local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = { '*' },
      }
    },
  },
})

lspconfig.ruff_lsp.setup({
  on_attach = on_attach,
  filetypes = { "python" },
  capabilities = capabilities,
  init_options = {
    settings = {
      args = {},
    }
  }
})


lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
})

local tf_capb = vim.lsp.protocol.make_client_capabilities()
tf_capb.textDocument.completion.completionItem.snippetSupport = true

lspconfig.terraformls.setup({
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 },
  capabilities = capabilities,
  filetypes = { "terraform", "tfvars", "tf" },
  root_dir = util.root_pattern(".terraform", ".git"),
})
