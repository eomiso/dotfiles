---@type LazySpec
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              autoImportCompletions = true,
              typeCheckingMode = "basic",
            },
          },
        },
      },
    },
  },
}
