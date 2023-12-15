vim.notify = require("notify")

vim.notify.setup({
  render = "wrapped-compact",
  stages = "fade_in_slide_out",
  max_width= 60,
  -- top_down = false
})
