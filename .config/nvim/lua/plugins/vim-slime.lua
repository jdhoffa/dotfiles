return {
  "jpalardy/vim-slime",
  config = function()
    local wk = require("which-key")

    wk.register({
      r = {
        name = "R-language",
        t = { '<cmd>SlimeSend0 "devtools::test()\\n"<cr>', "Test all" },
        c = { '<cmd>SlimeSend0 "devtools::check()\\n"<cr>', "Check" },
        b = { '<cmd>SlimeSend0 "devtools::build()\\n"<cr>', "Build" },
        i = { '<cmd>SlimeSend0 "devtools::install()\\n"<cr>', "Install" },
        d = { '<cmd>SlimeSend0 "devtools::document()\\n"<cr>', "Document" },
        l = { '<cmd>SlimeSend0 "devtools::load_all()\\n"<cr>', "Load" },
      },
    })
  end,
}
