local goyo_group = vim.api.nvim_create_augroup("GoyoGroup", { clear = true })
vim.api.nvim_create_autocmd("User", {
  desc = "Enter Goyo",
  group = goyo_group,
  pattern = "GoyoEnter",
  callback = function()
    require("lualine").hide()
    vim.cmd [[
      silent !tmux set status off
      silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
      set noshowmode
      set noshowcmd
      set scrolloff=999
      Limelight
    ]]
  end,
})

vim.api.nvim_create_autocmd("User", {
  desc = "Leave Goyo",
  group = goyo_group,
  pattern = "GoyoLeave",
  callback = function()
    require("lualine").hide({ unhide = true })
    vim.cmd [[
      silent !tmux set status on
      silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
      set showmode
      set showcmd
      set scrolloff=5
      Limelight!
    ]]
  end,
})
