local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.formatter"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    init = require("core.utils").lazy_load "nvim-ts-autotag",
    config = true,
  },
  {
    "NTBBloodbath/rest.nvim",
    ft = "http",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require "custom.configs.rest"
    end,
  },

  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = true,
  },
  --[[ 
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      {
        "MunifTanjim/nui.nvim",
      },
      {
        "rcarriga/nvim-notify",
        config = function()
          require("notify").setup {
            render = "minimal",
          }
        end,
      },
    },
    config = function()
      require("noice").setup {
        lsp = {
          signature = {
            enabled = false,
          },
          hover = {
            enabled = false,
          },
          progress = {
            enabled = false,
          },
        },
      }
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function ()
      require"fidget".setup({
        window = {
          relative = "win",
          border = "none"
        },
      })
    end,
  },
 ]]
  {
    "axelvc/template-string.nvim",
    config = true,
    lazy = false,
  },
  {
    "rainbowhxch/accelerated-jk.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "lukas-reineke/lsp-format.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event="VeryLazy",
    config = function()
      require "custom.configs.rainbow-delimiters"
    end,
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  }
  --[[ 
  {
    'kevinhwang91/nvim-ufo',
    event="VeryLazy",
    dependencies = {
      -- 
      {
        "kevinhwang91/promise-async"
      }
    },
    config = true
  }
 ]]
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Uncomment if you want to re-enable which-key
  -- {
  --   "folke/which-key.nvim",
  --   enabled = true,
  -- },
}

return plugins
