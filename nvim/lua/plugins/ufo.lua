return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      {
        "kevinhwang91/promise-async",
        name = "promise-async",
      },
    },
    event = "BufReadPost",
    keys = {
      { "<leader>a", function() require("ufo").openAllFolds() end, desc = "[ufo] OpenAllFolds", silent = true, },
      { "<leader>z", "za",                                         desc = "[ufo] ToggleFold",   silent = true, },
    },
    init = function()
      local o = vim.o
      o.foldcolumn = "1"
      o.foldlevel = 99
    end,
    name = "ufo",
    opts = {
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        local curWidth = 0
        local newVirtText = {}
        local suffix = (" 󰁂 %d "):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        for _, chunk in ipairs(virtText) do
          local chunkText = chunk[1]
          local chunkWidth = vim.fn.strdisplaywidth(chunkText)
          if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
          else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, { chunkText, hlGroup })
            chunkWidth = vim.fn.strdisplaywidth(chunkText)
            if curWidth + chunkWidth < targetWidth then
              suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
            end
            break
          end
          curWidth = curWidth + chunkWidth
        end
        table.insert(newVirtText, { suffix, "MoreMsg" })
        return newVirtText
      end,
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
}
