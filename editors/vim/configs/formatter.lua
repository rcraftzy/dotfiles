-- Configuración para Formatter.nvim
require('formatter').setup {
  logging = false,
  filetype = {
    javascriptreact = {
      -- Utiliza el comando 'rome' para formatear archivos JavaScript
      function()
        return {
          exe = "rome",
          args = {"format", "--stdin-file-path", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    },
    typescriptreact = {
      -- Utiliza el comando 'rome' para formatear archivos TypeScript
      function()
        return {
          exe = "rome",
          args = {"format", "--stdin-file-path", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    },
    javascript = {
      -- Utiliza el comando 'rome' para formatear archivos JavaScript
      function()
        return {
          exe = "rome",
          args = {"format", "--stdin-file-path", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    },
    typescript = {
      -- Utiliza el comando 'rome' para formatear archivos TypeScript
      function()
        return {
          exe = "rome",
          args = {"format", "--stdin-file-path", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = true
        }
      end
    }
  }
}
