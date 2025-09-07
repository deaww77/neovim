return {
  -- LSP base
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Python
      lspconfig.pyright.setup {}

      -- Lua
      lspconfig.lua_ls.setup {}
    end,
  },

  -- Mason (ตัวช่วยติดตั้ง LSP servers)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason-LSPConfig (เชื่อม mason กับ nvim-lspconfig)
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "pyright", "lua_ls", "html", "cssls", "ts_ls" }, -- ติดตั้งอัตโนมัติ
      }
    end,
  },
}

