return {
  {
    "chipsenkbeil/org-mouse.nvim",
    dependencies = { "nvim-orgmode/orgmode" },
    config = function()
      require("org-mouse").setup()
    end,
  },
  {
    "ayu-theme/ayu-vim",
    config = function()
      --- set termguicolors     " enable true colors support
      --- let ayucolor="light"  " for light version of theme
      --- let ayucolor="mirage" " for mirage version of theme
      --- let ayucolor="dark"   " for dark version of theme
      --- colorscheme ayu
    end,
  },
}
