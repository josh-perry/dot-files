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

    if PACKER_BOOTSTRAP then
        packer.sync()
    end
end)
