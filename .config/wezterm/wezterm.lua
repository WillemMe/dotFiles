local wezterm = require 'wezterm';



local mykeys = {}
for i = 1, 8 do
  -- CTRL+ALT + number to activate that tab
  table.insert(mykeys, {
    key=tostring(i),
    mods="ALT",
    action=wezterm.action{ActivateTab=i-1},
  })
end
table.insert(mykeys, {
  key="t",
  mods="ALT",
  action=wezterm.action{SpawnTab="CurrentPaneDomain"},
})
table.insert(mykeys, {
  key="w",
  mods="ALT",
  action=wezterm.action{CloseCurrentTab={confirm=true}},
})

return {
  color_scheme = "Arthur",
  window_background_opacity = 0.9,
  keys = mykeys,
}
