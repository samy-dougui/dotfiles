local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python", "go", "terraform", "tfvars", "lua", "yaml", "yml", "toml" },
    opts = function()
      return require("custom.configs.null-ls")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "ruff-lsp",
        "gopls",
        "terraform-ls",
        "tflint",
        "yamlfmt",
        "taplo"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "hcl", "terraform", "python", "go", "yaml", "json" },
    },
  },
  {
    "nathom/filetype.nvim",
    config = function()
      require("filetype").setup {
        overrides = {
          extensions = {
            tf = "terraform",
            tfvars = "terraform",
            tfstate = "json",
            yml = "yaml",
          },
        },
      }
    end,
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = function()
  --     local conf = require "nvchad.configs.telescope"
  --
  --     conf.defaults.mappings.i = {
  --       ["<C-j>"] = require("telescope.actions").move_selection_next,
  --       ["<Esc>"] = require("telescope.actions").close,
  --     }
  --
  --     -- or
  --     -- table.insert(conf.defaults.mappings.i, your table)
  --
  --     return conf
  --   end,
  -- }
}

return plugins
