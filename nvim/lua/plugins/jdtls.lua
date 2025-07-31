return {
  {
    "mfussenegger/nvim-jdtls",
    -- must use config function
    config = function()
      local home = os.getenv("HOME")
      local java_path = vim.fn.system("which java"):gsub("[\r\n]", "")
      local jar_path = vim.fn.glob(home ..
        "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar")
      local configuration_dir = home .. "/.local/share/nvim/mason/packages/jdtls/config_linux_arm"
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
      local data_dir = home .. "/NeoVimProjects/" .. project_name
      local config = {
        cmd = {
          java_path,
          "-Declipse.application=org.eclipse.jdt.ls.core.id1",
          "-Dosgi.bundles.defaultStartLevel=4",
          "-Declipse.product=org.eclipse.jdt.ls.core.product",
          "-Dlog.protocol=true",
          "-Dlog.level=ALL",
          "-Xms1024m",
          "-Xmx2048m",
          "--add-modules=ALL-SYSTEM",
          "--add-opens",
          "java.base/java.util=ALL-UNNAMED",
          "--add-opens",
          "java.base/java.lang=ALL-UNNAMED",
          "-jar",
          jar_path,
          "-configuration",
          configuration_dir,
          "-data",
          data_dir,
        },
        settings = {
          java = {}
        },
        init_options = {
          bundles = {}
        }
      }
      require("jdtls").start_or_attach(config)
    end,
    ft = { "java" },
    name = "jdtls",
  },
}
