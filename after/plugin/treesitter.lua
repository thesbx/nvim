require'nvim-treesitter.configs'.setup {

    -- A list of parser names, or "all"
    ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust", "php" },
    -- ignore_install = { "php" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    indent = { enable = true },

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = {'php', 'tsx', 'jsx'},
    },
}
require("nvim-treesitter").statusline()

