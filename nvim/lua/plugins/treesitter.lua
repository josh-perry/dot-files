local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

local installed_languages = {
    "lua",
    "json"
}

configs.setup({
  ensure_installed = installed_languages,
  sync_install = false,
  highlight = { enable = true, },
  context_commentstring = { enable = true, },
  autotag = { enable = true, },
})
