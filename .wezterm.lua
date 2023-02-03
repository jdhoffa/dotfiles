local wezterm = require 'wezterm'

return {
  default_prog = {"/opt/homebrew/bin/fish"},
  term = 'wezterm',
  color_scheme = "nord",
  font = wezterm.font_with_fallback(
    {
    'FiraCode Nerd Font',
    'Fira Code Nerd Font Mono',
    'SFMono Nerd Font',
    'Hack Nerd Font',
    'Source Code Pro',
    'Monaco',
    'Menlo'
    },
    { weight = "Medium"}
  ),
  font_size = 16.0,
  window_background_opacity = 0.8,
  enable_tab_bar = false,
  window_decorations = "RESIZE",
  keys = {
    {
      -- select tmux window 1
      key = "1",
      mods = "SUPER",
      action = wezterm.action.SendString '\x021'
    },
    {
      -- 2
      key = "2",
      mods = "SUPER",
      action = wezterm.action.SendString '\x022'
    },
    {
      -- 3
      key = "3",
      mods = "SUPER",
      action = wezterm.action.SendString '\x023'
    },
    {
      -- 4
      key = "4",
      mods = "SUPER",
      action = wezterm.action.SendString '\x024'
    },
    {
      -- 5
      key = "5",
      mods = "SUPER",
      action = wezterm.action.SendString '\x025'
    },
    {
      -- 6
      key = "6",
      mods = "SUPER",
      action = wezterm.action.SendString '\x026'
    },
    {
      -- 7
      key = "7",
      mods = "SUPER",
      action = wezterm.action.SendString '\x027'
    },
    {
      -- 8
      key = "8",
      mods = "SUPER",
      action = wezterm.action.SendString '\x028'
    },
    {
      -- 9
      key = "9",
      mods = "SUPER",
      action = wezterm.action.SendString '\x029'
    },
    {
      -- rename current tmux window
      key = ",",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02,'
    },
    {
      -- open lazydocker
      key = "d",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02K'
    },
    {
      -- split tmux window vertically
      key = "e",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02\"'
    },
    {
      -- split tmux window horizontally
      key = "e",
      mods = "SUPER|SHIFT",
      action = wezterm.action.SendString "\x02%"
    },
    {
      -- open file manager 'gokcehan/lf'
      key = "f",
      mods = "SUPER",
      action = wezterm.action.SendString 'lfcd\n'
    },
    {
      -- open git manager 'jesseduffield/lazygit'
      key = "g",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02g'
    },
    {
      -- open tmux smart session manager
      key = "j",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02\x54'
    },
    {
      -- open interactive tmux session client
      key = "k",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02s'
    },
    {
      -- switch to last tmux session
      key = "l",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02L'
    },
    {
      -- navigate back (ctrl+o)
      key = "[",
      mods = "SUPER",
      action = wezterm.action.SendString '\x0f'
    },
    {
      -- switch to next tmux window
      key = "[",
      mods = "SUPER|SHIFT",
      action = wezterm.action.SendString '\x02p'
    },
    {
      key = "o",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02u'
    },
    {
      -- files
      key = "p",
      mods = "SUPER",
      action = wezterm.action.SendString ':GoToFile\n'
    },
    {
      -- commands
      key = "p",
      mods = "SUPER|SHIFT",
      action = wezterm.action.SendString ':GoToCommand\n'
    },
    {
      -- quit vim
      key = "q",
      mods = "SUPER",
      action = wezterm.action.SendString ':q\n'
    },
    {
      key = "r",
      mods = "SUPER",
      action = wezterm.action.SendString '\x1b\x5b\x41\x0a'
    },
    {
      key = "]",
      mods = "SUPER",
      action = wezterm.action.SendString '\x09'
    },
    {
      key = "]",
      mods = "SUPER|SHIFT",
      action = wezterm.action.SendString '\x02n'
    },
    {
      -- save vim buffer
      key = "s",
      mods = "SUPER",
      action = wezterm.action.SendString '\x1b\x3a\x77\x0a'
    },
    {
      -- save all
      key = "s",
      mods = "SUPER|SHIFT",
      action = wezterm.action.SendString ':wa\n'
    },
    {
      -- enter tmux command prompt
      key = "t",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02c'
    },
    {
      -- kill the current pane
      key = "w",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02x'
    },
    {
      -- toggle zoom state of the current tmux pane
      key = "z",
      mods = "SUPER",
      action = wezterm.action.SendString '\x02z'
    }
  }
}
