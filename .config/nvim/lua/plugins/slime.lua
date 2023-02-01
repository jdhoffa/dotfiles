return {
  "jpalardy/vim-slime",
  name = "slime",
  opts = {
    config = function()
      vim.g.slime_dont_ask_default = 1
      vim.g.slime_python_ipython = 1
      vim.g.slime_target = "tmux"
      vim.g.slime_tmux_config = {
        socket_name = "default",
        target_pane = "{last}",
      }
      vim.g.slime_paste_file = "/tmp/vim-slime-paste"
}
