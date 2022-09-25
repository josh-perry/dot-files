local install_path = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local packer = require("packer")

return packer.startup(function()
    use("wbthomason/packer.nvim")
    use("ctrlpvim/ctrlp.vim")
    use("chriskempson/base16-vim")
    use("ntpeters/vim-better-whitespace")
    use("vim-airline/vim-airline")
    use("junegunn/fzf")
    use("junegunn/fzf.vim")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("yuki-yano/fzf-preview.vim")
    use("leafo/moonscript-vim")
    use("editorconfig/editorconfig-vim")
    use("mfussenegger/nvim-lint")

    if PACKER_BOOTSTRAP then
        packer.sync()
    end
end)
