return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "ribru17/bamboo.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bamboo",
    },
  }
}
