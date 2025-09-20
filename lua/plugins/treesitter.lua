return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "windwp/nvim-ts-autotag" },
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "typescript", "php", "javascript", "html", "css", "tsx", "python", "c"
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }

    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        vim.cmd("TSEnable highlight")
      end,
    })
  end,
}

