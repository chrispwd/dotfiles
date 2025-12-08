-- -- Set up the logger
-- local log = hs.logger.new('WindowMover', 'info')

-- function dump(o)
--    if type(o) == 'table' then
--       local s = '{ '
--       for k,v in pairs(o) do
--          if type(k) ~= 'number' then k = '"'..k..'"' end
--          s = s .. '['..k..'] = ' .. dump(v) .. ','
--       end
--       return s .. '} '
--    else
--       return tostring(o)
--    end
-- end

-- -- Function to get spaceId by space name
-- function getSpaceIdByName(spaceName)
--     local spaceNames = hs.spaces.missionControlSpaceNames()
--     for uuid, desktops in pairs(spaceNames) do
--         log.i("UUID: " .. uuid) -- Log the UUID
--         log.i("desktops: " .. dump(desktops)) -- Log the desktops
--         for index, name in pairs(desktops) do
--             log.i("Index: " .. index .. ", Name: " .. tostring(name)) -- Log the index and name
--             if name == spaceName then
--                 log.i("Found spaceId for " .. spaceName .. ": " .. index)
--                 return index
--             end
--         end
--     end
--     log.w("Space not found: " .. spaceName)
--     return nil
-- end

-- -- Function to move focused window to a specific space
-- function moveFocusedWindowToSpace(spaceNumber)
--     local spaceName = "Desktop " .. spaceNumber
--     log.i("Attempting to move window to " .. spaceName)
--     local spaceId = getSpaceIdByName(spaceName)
--     if spaceId then
--         local focusedWindow = hs.window.focusedWindow()
--         if focusedWindow then
--             log.i("Moving window " .. focusedWindow:title() .. " to spaceId " .. spaceId)
--             hs.spaces.moveWindowToSpace(focusedWindow:id(), spaceId)
--         else
--             log.w("No focused window")
--             hs.alert.show("No focused window")
--         end
--     else
--         log.w("Space not found: " .. spaceName)
--         hs.alert.show("Space not found: " .. spaceName)
--     end
-- end

-- -- Bind keys cmd + shift + 1-6
-- for i = 1, 9 do
--     hs.hotkey.bind({"cmd", "shift"}, tostring(i), function()
--         log.i("Hotkey pressed: cmd + shift + " .. i)
--         moveFocusedWindowToSpace(i)
--     end)
-- end

-- toggleApp = function(appName, launch)
--   launch = launch or false
--   local app = hs.application.get(appName)
--   if app then
--       if app:isFrontmost() then
--           app:hide()
--       else
--           app:activate()
--       end
--   else
--       if launch then
--           hs.application.launchOrFocus(appName)
--       else
--           hs.alert.show("App '" .. appName .. "' is not loaded!")
--       end
--   end
-- end

-- hs.hotkey.bind({"cmd", "ctrl"}, "1", function() toggleApp("iTerm2") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "2", function() toggleApp("Firefox") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "3", function() toggleApp("Slack") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "4", function() toggleApp("KeePassXC") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "5", function() toggleApp("Docker") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "6", function() toggleApp("Sequel Ace") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "7", function() toggleApp("1Password") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "8", function() toggleApp("CoScreen") end)
-- hs.hotkey.bind({"cmd", "ctrl"}, "9", function() toggleApp("Google Chrome") end)

-- hs.loadSpoon("SpoonInstall")

-- spoon.SpoonInstall.repos.PaperWM = {
--     url = "https://github.com/mogenson/PaperWM.spoon",
--     desc = "PaperWM.spoon repository",
--     branch = "release",
-- }

-- spoon.SpoonInstall:andUse("PaperWM", {
--     repo = "PaperWM",
--     config = { screen_margin = 16, window_gap = 2 },
--     start = true,
--     -- hotkeys = {
--     --     < see below >
--     -- }
-- })

-- PaperWM = hs.loadSpoon("PaperWM")
-- PaperWM:bindHotkeys({
--     -- switch to a new focused window in tiled grid
--     focus_left  = {{"alt", "cmd"}, "h"},
--     focus_right = {{"alt", "cmd"}, "l"},
--     focus_up    = {{"alt", "cmd"}, "k"},
--     focus_down  = {{"alt", "cmd"}, "j"},

--     -- switch windows by cycling forward/backward
--     -- (forward = down or right, backward = up or left)
--     focus_prev = {{"alt", "shift"}, "tab"},
--     focus_next = {{"alt"}, "tab"},

--     -- move windows around in tiled grid
--     swap_left  = {{"alt", "cmd", "shift"}, "left"},
--     swap_right = {{"alt", "cmd", "shift"}, "right"},
--     swap_up    = {{"alt", "cmd", "shift"}, "up"},
--     swap_down  = {{"alt", "cmd", "shift"}, "down"},

--     -- position and resize focused window
--     center_window        = {{"alt", "cmd"}, "c"},
--     full_width           = {{"alt", "cmd"}, "f"},
--     cycle_width          = {{"alt", "cmd"}, "r"},
--     reverse_cycle_width  = {{"ctrl", "alt", "cmd"}, "r"},
--     cycle_height         = {{"alt", "cmd", "shift"}, "r"},
--     reverse_cycle_height = {{"ctrl", "alt", "cmd", "shift"}, "r"},

--     -- increase/decrease width
--     increase_width = {{"alt", "cmd", "shift"}, "l"},
--     decrease_width = {{"alt", "cmd", "shift"}, "h"},

--     -- move focused window into / out of a column
--     slurp_in = {{"alt", "cmd"}, "i"},
--     barf_out = {{"alt", "cmd"}, "o"},

--     -- move the focused window into / out of the tiling layer
--     toggle_floating = {{"alt", "cmd", "shift"}, "escape"},

--     -- focus the first / second / etc window in the current space
--     focus_window_1 = {{"cmd", "shift"}, "1"},
--     focus_window_2 = {{"cmd", "shift"}, "2"},
--     focus_window_3 = {{"cmd", "shift"}, "3"},
--     focus_window_4 = {{"cmd", "shift"}, "4"},
--     focus_window_5 = {{"cmd", "shift"}, "5"},
--     focus_window_6 = {{"cmd", "shift"}, "6"},
--     focus_window_7 = {{"cmd", "shift"}, "7"},
--     focus_window_8 = {{"cmd", "shift"}, "8"},
--     focus_window_9 = {{"cmd", "shift"}, "9"},

--     -- switch to a new Mission Control space
--     switch_space_l = {{"alt", "cmd"}, ","},
--     switch_space_r = {{"alt", "cmd"}, "."},
--     switch_space_1 = {{"cmd"}, "1"},
--     switch_space_2 = {{"cmd"}, "2"},
--     switch_space_3 = {{"cmd"}, "3"},
--     switch_space_4 = {{"cmd"}, "4"},
--     switch_space_5 = {{"cmd"}, "5"},
--     switch_space_6 = {{"cmd"}, "6"},
--     switch_space_7 = {{"cmd"}, "7"},
--     switch_space_8 = {{"cmd"}, "8"},
--     switch_space_9 = {{"cmd"}, "9"},

--     -- move focused window to a new space and tile
--     move_window_1 = {{"cmd", "shift"}, "1"},
--     move_window_2 = {{"cmd", "shift"}, "2"},
--     move_window_3 = {{"cmd", "shift"}, "3"},
--     move_window_4 = {{"cmd", "shift"}, "4"},
--     move_window_5 = {{"cmd", "shift"}, "5"},
--     move_window_6 = {{"cmd", "shift"}, "6"},
--     move_window_7 = {{"cmd", "shift"}, "7"},
--     move_window_8 = {{"cmd", "shift"}, "8"},
--     move_window_9 = {{"cmd", "shift"}, "9"}
-- })
-- PaperWM:bindHotkeys(PaperWM.default_hotkeys)
-- PaperWM:start()
-- PaperWM.window_filter:rejectApp("Clock")