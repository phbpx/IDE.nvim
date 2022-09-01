local present, copilot = pcall(require, "copilot")

if not present then
   return
end

copilot.setup {
  cmp = {
    enabled = true,
    method = "getCompletionsCycling",
  },
  ft_disable = {
    "markdown",
    "terraform",
  },
  server_opts_overrides = {
    trace = "verbose",
    settings = {
      advanced = {
        inlineSuggestCount = 3,
      }
    },
  }
}

