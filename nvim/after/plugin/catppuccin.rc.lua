local status, catppuccin = pcall(require, 'catppuccin')
if (not status) then return end

-- test
catppuccin.setup {
    flavour = "macchiato",
    background = {
        light = "latte",
        dark = "macchiato"
    },
    styles = {
        comments = { "italic" },
        keywords = { "italic" }
    }
}
vim.cmd('colorscheme catppuccin')
