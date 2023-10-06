return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      completion = {
        autocomplete = false,
      },
      mapping = require("cmp").mapping.preset.insert({
        ["<C-Enter>"] = require("cmp").mapping.complete(),
      }),
    },
  },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.surround", enabled = false },
  --{ "echasnovski/mini.comment", enabled = false },
}
