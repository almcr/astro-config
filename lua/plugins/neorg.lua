return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      vim.opt.conceallevel = 2
      vim.opt.concealcursor = "n"
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              icons = {
                todo = {
                  cancelled = { icon = "✗" }, -- do not put extra '}' here
                  pending = { icon = "." }, -- no extra wrapping brackets here
                  recurring = { icon = "@" }, -- no extra wrapping brackets here
                  uncertain = { icon = "?" }, -- no extra wrapping brackets here
                  undone = { icon = " " }, -- no extra wrapping brackets here
                  urgent = { icon = "!" }, -- no extra wrapping brackets here
                },
              },
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
  },
}
