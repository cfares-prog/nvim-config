return{
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        highlight = {
            enabled = true,
        },
    },
}
