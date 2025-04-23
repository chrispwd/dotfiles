-- Set up the logger
local log = hs.logger.new('WindowMover', 'info')

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

-- Function to get spaceId by space name
function getSpaceIdByName(spaceName)
    local spaceNames = hs.spaces.missionControlSpaceNames()
    for uuid, desktops in pairs(spaceNames) do
        log.i("UUID: " .. uuid) -- Log the UUID
        log.i("desktops: " .. dump(desktops)) -- Log the desktops
        for index, name in pairs(desktops) do
            log.i("Index: " .. index .. ", Name: " .. tostring(name)) -- Log the index and name
            if name == spaceName then
                log.i("Found spaceId for " .. spaceName .. ": " .. index)
                return index
            end
        end
    end
    log.w("Space not found: " .. spaceName)
    return nil
end

-- Function to move focused window to a specific space
function moveFocusedWindowToSpace(spaceNumber)
    local spaceName = "Desktop " .. spaceNumber
    log.i("Attempting to move window to " .. spaceName)
    local spaceId = getSpaceIdByName(spaceName)
    if spaceId then
        local focusedWindow = hs.window.focusedWindow()
        if focusedWindow then
            log.i("Moving window " .. focusedWindow:title() .. " to spaceId " .. spaceId)
            hs.spaces.moveWindowToSpace(focusedWindow:id(), spaceId)
        else
            log.w("No focused window")
            hs.alert.show("No focused window")
        end
    else
        log.w("Space not found: " .. spaceName)
        hs.alert.show("Space not found: " .. spaceName)
    end
end

-- Bind keys cmd + shift + 1-6
for i = 1, 9 do
    hs.hotkey.bind({"cmd", "shift"}, tostring(i), function()
        log.i("Hotkey pressed: cmd + shift + " .. i)
        moveFocusedWindowToSpace(i)
    end)
end

toggleApp = function(appName, launch)
  launch = launch or false
  local app = hs.application.get(appName)
  if app then
      if app:isFrontmost() then
          app:hide()
      else
          app:activate()
      end
  else
      if launch then
          hs.application.launchOrFocus(appName)
      else
          hs.alert.show("App '" .. appName .. "' is not loaded!")
      end
  end
end

hs.hotkey.bind({"cmd"}, "1", function() toggleApp("iTerm2") end)
hs.hotkey.bind({"cmd"}, "2", function() toggleApp("Firefox") end)
hs.hotkey.bind({"cmd"}, "3", function() toggleApp("Slack") end)
hs.hotkey.bind({"cmd"}, "4", function() toggleApp("KeePassXC") end)
hs.hotkey.bind({"cmd"}, "6", function() toggleApp("Sequel Ace") end)
