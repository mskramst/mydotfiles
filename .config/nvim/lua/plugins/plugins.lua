return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "jose-elias-alvarez/nvim-lsp-ts-utils",
  'vim-airline/vim-airline',                 -- Creates bottom airline bar in vim"
  'vim-airline/vim-airline-themes',          -- Allows for options for airline themes"
  'tpope/vim-fugitive',
  'ray-x/go.nvim',
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "nvim-lua/popup.nvim", 			
  "neovim/nvim-lspconfig",
  {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
  },
  {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  },
}
