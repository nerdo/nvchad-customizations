require("neotest").setup({
  adapters = {
    require("neotest-vitest"),
    require("neotest-go"),
    -- require("neotest-jest"),
    require("neotest-phpunit"),
    require("neotest-rust"),
  }
})
