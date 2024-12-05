return {
    "tamton-aquib/staline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local staline = require("staline")

        staline.setup({
            defaults = {
                    expand_null_ls = false,
                    left_separator  = "",
                    right_separator = "",
                    full_path       = false,
                    line_column     = "[%l/%L] :%c 並%p%% ",

                    fg              = "#303446",
                    bg              = "#232634",
                    inactive_color  = "#737994",
                    inactive_bgcolor = "none",
                    true_colors     = false,
                    font_active     = "none",

                    mod_symbol      = "  ",
                    lsp_client_symbol = " ",
                    lsp_client_character_length = 12,
                    branch_symbol   = " ",
                    cool_symbol     = " ",
                    null_ls_symbol = "",
                },
                mode_colors = {
                    n = "#8caaee",
                    i = "#a6d189",
                    c = "#e5c890",
                    v = "#ca9ee6",
                },
                mode_icons = {
                    n = " ",
                    i = " ",
                    c = " ",
                    v = " ",
                },
                sections = {
                    left = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
                    mid  = { 'file_name' },
                    right = { 'cool_symbol','right_sep_double', '-line_column' },
                },
                inactive_sections = {
                    left = { 'branch' },
                    mid  = { 'file_name' },
                    right = { 'line_column' }
                },
                special_table = {
                    NvimTree = { 'NvimTree', ' ' },
                    packer = { 'Packer',' ' },        -- etc
                },
                lsp_symbols = {
                    Error=" ",
                    Info=" ",
                    Warn=" ",
                    Hint="",
                },
        })
    end
}
