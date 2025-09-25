return {
  -- LSP base
  {
    "neovim/nvim-lspconfig",
    config = function()
      
      -- Python
      vim.lsp.config.pyright = {}
      
      -- Lua
      vim.lsp.config.lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true)
            }
          }
        }
      }
      
      -- Dart/Flutter
      vim.lsp.config.dartls = {
        cmd = { "dart", "language-server", "--protocol=lsp" },
        filetypes = { "dart" },
        root_dir = function(fname)
          return vim.fs.dirname(vim.fs.find({'pubspec.yaml', '.git'}, { 
            upward = true, 
            path = fname 
          })[1])
        end,
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
      vim.lsp.config.html = {}
      
      -- CSS
      vim.lsp.config.cssls = {}
      
      -- TypeScript/JavaScript
      vim.lsp.config.ts_ls = {}
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
        handlers = {
          function(server_name)
            if not vim.lsp.config[server_name] then
              vim.lsp.config[server_name] = {}
            end
          end,
        }
      }
    end,
  },
}
