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
      
      lspconfig.dartls.setup {
        cmd = { "dart", "language-server", "--protocol=lsp" },
        filetypes = { "dart" },
        root_dir = lspconfig.util.root_pattern("pubspec.yaml", ".git"),
        init_options = {
          onlyAnalyzeProjectsWithOpenFiles = true,
          suggestFromUnimportedLibraries = true,
          closingLabels = true,
          outline = true,
          flutterOutline = true,
        },
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
          }
        }
      }
      
      -- HTML
      lspconfig.html.setup {}
      
      -- CSS
      lspconfig.cssls.setup {}
      
      -- TypeScript/JavaScript
      lspconfig.ts_ls.setup {}
    end,
  },
  
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { 
          "pyright", 
          "lua_ls", 
          "html", 
          "cssls", 
          "ts_ls"
        },
      }
    end,
  },
}
