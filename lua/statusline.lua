local M = {}
function M.setup()
    local ok, lualine = pcall(require, "lualine")
    if not ok then return end

    vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

    lualine.setup {
        options = {
            theme = 'gruvbox-material',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            icons_enabled = true,
            globalstatus = true,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    }
end

return M

