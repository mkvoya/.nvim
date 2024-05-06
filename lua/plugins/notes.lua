return {

  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "all",
          path = "~/Dropbox/Dreams/",
        },
      },

      -- see below for full list of options 👇
    },
  },
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/Dropbox/Dreams/**/*",
        org_default_notes_file = "~/Dropbox/Dreams/refile.org",
      })
      -- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
      -- add `org` to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
  --  {
  --    "chipsenkbeil/org-roam.nvim",
  --    dependencies = {
  --      {
  --        "nvim-orgmode/orgmode",
  --        commit = "5875037fa9c7c8e0abf29cd69510150355d248a0",
  --      },
  --    },
  --    config = function()
  --      require("org-roam").setup({
  --        directory = "~/Dropbox/Dreams/",
  --      })
  --    end,
  --  },
  {
    "ranjithshegde/orgWiki.nvim",
    config = function()
      require("orgWiki").setup({
        wiki_path = { "~/Dropbox/Dreams/" },
        diary_path = "~/Dropbox/Dreams/diary/",
      })
    end,
  },
  {
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup()
    end,
  },
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        -- your options
      })
    end,
  },
}
