vim.api.nvim_create_autocmd("User", {
  callback = function()
    vim.schedule(function()
      print "[mason-tools-installer] installing packages..."
    end)
  end,
  pattern = "MasonToolsStartingInstall",
})
