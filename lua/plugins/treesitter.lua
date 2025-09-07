return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  dependencies = { 'windwp/nvim-ts-autotag' }, -- สำหรับ autotag
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "lua", "typescript", "php", "javascript", "html", "css"
      },
      auto_install = false,
    }
  end
}

