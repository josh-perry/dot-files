require("plugins.packer")
require("plugins.treesitter")
require("plugins.nvim-lint")
require("colorscheme")

vim.opt.number = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

local keys = {
    ["n"] = {
        [","] = ":Ag <CR>"
    }
}

for keyType, t in pairs(keys) do
    for k, v in pairs(t) do
        vim.api.nvim_set_keymap(keyType, k, v, { noremap = false, silent = false })
    end
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})
