local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "sainnhe/gruvbox-material",
        config = function()
            vim.g.gruvbox_material_background = "medium"
            vim.cmd.colorscheme("gruvbox-material")
            enable_transparency()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = 'gruvbox-material' }
    },
}

