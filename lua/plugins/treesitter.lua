return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { 
    "windwp/nvim-ts-autotag",
    "HiPhish/rainbow-delimiters.nvim",
    "lukas-reineke/indent-blankline.nvim" -- bonus: เส้นบอก indent
  },
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "typescript", "php", "javascript", "html", "css", "tsx", "python", "c", "dart"
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
    
    require('rainbow-delimiters.setup').setup({
      strategy = {
        [''] = require('rainbow-delimiters').strategy['global'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
      },
    })
    
    require("ibl").setup({
      indent = { char = "│" },
      scope = { enabled = true, show_start = true, show_end = true },
    })
    
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        vim.cmd("TSEnable highlight")
      end,
    })
  end,
}
