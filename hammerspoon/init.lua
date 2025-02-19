---@diagnostic disable: undefined-global
function UpdateDockBehavior()
  local primaryScreen = hs.screen.primaryScreen()
  if not primaryScreen then return end

  local screenName = primaryScreen:name()
  print("[DockProfile] Primary Screen: " .. screenName)

  -- Default profile (MacBook)
  local dockSettings = {
    autohide = true,
    tilesize = 36,
    largesize = 71
  }

  -- Studio Display profile
  if screenName:match("Studio Display") then
    dockSettings.autohide = false
    dockSettings.tilesize = 50
    dockSettings.largesize = 64
  end

  -- Apply the settings
  hs.execute("defaults write com.apple.dock autohide -int " .. (dockSettings.autohide and "1" or "0"))
  hs.execute("defaults write com.apple.dock magnification -int " ..
    ((dockSettings.tilesize ~= dockSettings.largesize) and "1" or "0"))
  hs.execute("defaults write com.apple.dock largesize -int " .. dockSettings.largesize)
  hs.execute("defaults write com.apple.dock tilesize -int " .. dockSettings.tilesize)
  hs.execute("killall Dock")

  print("[DockProfile] Applied: tilesize = " .. dockSettings.tilesize .. ", largesize = " .. dockSettings.largesize)
end

-- Watch for display changes and update Dock behavior
hs.screen.watcher.new(UpdateDockBehavior):start()
UpdateDockBehavior()
