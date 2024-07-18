return {
  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function() --replace 'config' with 'init'
      vim.g.vimwiki_list = { { path = "~/vimwiki", ext = ".wiki" } }
    end,
  },
}
