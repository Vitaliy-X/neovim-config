require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "help" },
  
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
  
    auto_install = true,
  
    -- List of parsers to ignore installing (for "all")
    ignore_install = { "javascript" },
  
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
  
      disable = { "c", "cpp", "lua" },
  
      additional_vim_regex_highlighting = false,
    },
  }