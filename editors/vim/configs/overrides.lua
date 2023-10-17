local M = {}

--- Check `:h nvim-treesitter` for more information about the parser
--- If you install some treesitter-related plugins, make sure to check out their docs too
--- For the list of available parsers, you can find the list at
--- [Supported Languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  check_ts = true,
  ts_config = {
    lua = { "string" }, -- it will not add a pair on that treesitter node
    javascript = { "template_string" },
    java = false, -- don't check treesitter on java
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",

    "vue-language-server",
    "emmet-ls",
    "json-lsp",
    "gopls",

    -- shell
    "shfmt",
    "shellcheck",
    "prettier",
    "eslint_d",
    "codespell",
    "tailwindcss-language-server",
  },
}

--- git support in nvimtree
--- Read `:h nvim-tree-setup` for more information
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
  },
  renderer = {
    highlight_git = true,
    full_name = false,

    icons = {
      show = {
        -- git = true,
        folder = false
      },
    },
    --[[ 
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        --- corner = "└",
        corner = "│",
        edge = "│",
        item = "│",
        -- bottom = "─",
        none = " ",
      },
    },
 ]]
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  },

  view = {
    side = "right",
  },
}

return M
