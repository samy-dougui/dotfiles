---@type ChadrcConfig
local M = {}
vim.g.terraform_align = 1
vim.g.terraform_fmt_on_save = 1
vim.opt.relativenumber = true
M.mappings = {
  general = {
    n = {
      ["ss"] = {
        ":split<Return>",
        "Window split horizontally"
      },
      ["sv"] = {
        ":vsplit<Return>",
        "Window split vertically"
      },
      ["sh"] = {
        "<C-w>h",
        "Window move left"
      },
      ["sk"] = {
        "<C-w>k",
        "Window move up"
      },
      ["sj"] = {
        "<C-w>j",
        "Window move down"
      },
      ["sl"] = {
        "<C-w>l",
        "Window move right"
      }
    }
  }
}

M.ui = {
  theme = "catppuccin",
  telescope = {
    style = "bordered",
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "██╗  ██╗███████╗██╗   ██╗    ██╗",
      "██║  ██║██╔════╝╚██╗ ██╔╝    ██║",
      "███████║█████╗   ╚████╔╝     ██║",
      "██╔══██║██╔══╝    ╚██╔╝      ╚═╝",
      "██║  ██║███████╗   ██║       ██╗",
      "╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═╝",
    },
  }
}
M.plugins = "custom.plugins"
return M
