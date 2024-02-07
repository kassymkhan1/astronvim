return {
  "https://git.sr.ht/~nedia/auto-save.nvim",
  event = { "BufReadPre" },
  lazy=false,
  opts = {
    events = { 'InsertLeave', 'BufLeave' },
    silent = false,
    exclude_ft = { 'neo-tree' },
  },
}
