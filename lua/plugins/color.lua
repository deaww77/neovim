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
	    -- ปรับสี Tree-sitter group บางตัว
	    vim.api.nvim_set_hl(0, "TSFunction", { fg = "#FFD700", bold = true }) -- ฟังก์ชันเป็นสีทอง
	    vim.api.nvim_set_hl(0, "TSKeyword",  { fg = "#FF5733", italic = true }) -- keyword เป็นสีส้ม
	    vim.api.nvim_set_hl(0, "TSString",   { fg = "#98C379" }) -- string เป็นสีเขียวสด
	    vim.api.nvim_set_hl(0, "TSComment",  { fg = "#808080", italic = true }) -- คอมเมนต์เป็นเทา

        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = 'gruvbox-material' }
    },
}

