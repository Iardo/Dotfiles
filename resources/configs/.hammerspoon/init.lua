----------------------------------------------------------
-- INIT
----------------------------------------------------------
-- Global constants
isDebug = false
isEnabled = true

-- Requires
require "Debugger"


----------------------------------------------------------
-- GENERAL
----------------------------------------------------------
if isEnabled == true then


----------------------------------------------------------
-- FINDER
----------------------------------------------------------
-- Remap keyboard shortcuts to mimic windows explorer behavior on finder
local backspace = 51
finderBackspace = hs.hotkey.bind({}, backspace, function()
    local app = hs.application.frontmostApplication()

    if app:name() == "Finder" then
        hs.eventtap.keyStroke({"cmd"}, "up")
    end
end)

finderEnter = hs.hotkey.bind({}, "return", function()
    local app = hs.application.frontmostApplication()

    if app:name() == "Finder" then
        hs.eventtap.keyStroke({"cmd"}, "down")
    end
end)

-- Bind the function when the application is focused
finderBackspace:disable()
finderEnter:disable()

hs.window.filter.new("Finder"):subscribe(hs.window.filter.windowFocused, function()
  finderBackspace:enable()
  finderEnter:enable()
end)
hs.window.filter.new("Finder"):subscribe(hs.window.filter.windowUnfocused, function()
  finderBackspace:disable()
  finderEnter:disable()
end)


-- Close Enabled
end

