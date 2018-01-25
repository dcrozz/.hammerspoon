-- I have give up zoomnig the photoshop cc in my osx 10.11.4
-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"cmd", "ctrl","shift"}
local input = {"cmd","alt","shift"}
hs.window.animationDuration = 0


-----------------------------------------------
-- Toogle the app
-----------------------------------------------
local key2App = {
    w = 'wechat',
    -- p = 'Adobe Photoshop CC',
	p = 'pdf expert',
    s = 'Sublime Text 2',
    d = 'MacDown',
    f = 'Firefox',
    n = 'NeteaseMusic',
    m = 'MacVim',
	q = 'evernote',
}
for key, app in pairs(key2App) do
    hs.hotkey.bind(hyper, key, function() toogleApp(app) end)
end
-- Toogle the App between hide and show
hs.hotkey.bind(hyper, 'return' , function() 
    toogleApp('iTerm') 
end)
hs.hotkey.bind(hyper, '1' , function()
    toogleApp('Finder')
end)
hs.hotkey.bind(hyper, '2' , function()
    toogleApp('Firefox')
end)

function toogleApp(_app) 
    frontApp = hs.application.frontmostApplication()
    if frontApp:title() == _app then
        frontApp:hide()
    else
        hs.application.launchOrFocus(_app)
    end
end

-----------------------------------------------
-- hyper h for left one half window
-----------------------------------------------

hs.hotkey.bind(hyper, 'h', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper l for right one half window
-----------------------------------------------

hs.hotkey.bind(hyper, 'l', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2)
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper f for fullscreen
-----------------------------------------------

hs.hotkey.bind(hyper, 'k', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w
        f.h = max.h
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper j for original size
-----------------------------------------------

hs.hotkey.bind(hyper, 'j', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 6)
        f.y = max.y + (max.h / 6)
        f.w = max.w/2
        f.h = max.h/2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)
-----------------------------------------------
-- hyper r for top left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, 'e', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper t for top right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, 'r', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2)
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper v for bottom left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, 'v', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2)
        f.y = max.y + (max.h / 2)
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper c for bottom right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, 'c', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y + (max.h / 2)
        f.w = max.w / 2
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)

-----------------------------------------------
-- hyper o for top half of the window
-----------------------------------------------
hs.hotkey.bind(hyper, 'o', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w 
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)
-----------------------------------------------
-- hyper . for bottom half of the window
-----------------------------------------------
hs.hotkey.bind(hyper, '.', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y + (max.h / 2)
        f.w = max.w
        f.h = max.h / 2
        win:setFrame(f)
    else
        hs.alert.show("No active window")
    end
end)
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
-- hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, 'i', function()
    hs.hints.style = 'vimperator'
    hs.hints.windowHints()
end)

hs.hotkey.bind(hyper, '`', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)

    hs.mouse.setAbsolutePosition(center)
end)

-- Send the window to the next screen
hs.hotkey.bind(hyper, ';', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local screen = win:screen()
        if #hs.screen.allScreens() > 1 then
            win:moveToScreen(screen:next())
        else
            hs.alert.show("Only one monitor")
        end
    else
        hs.alert.show("No active window")
    end
end)

hs.hotkey.bind(hyper, '\'',function()
	for index,win in pairs(hs.screen.allScreens()) do 
		if win == hs.screen'Dell' then
			if win:rotate() == 90 then
				win:rotate(0)
			else
				win:rotate(90)
			end
		end
	end
end)

-----------------------------------------------
-- Exit wechat when sleep
-----------------------------------------------
hs.caffeinate.watcher.new(function (state)
    if state ==  hs.caffeinate.watcher.screensDidSleep then
        local wechat =  hs.application.find('wechat')
        wechat:kill()
    end
end):start()

-----------------------------------------------
-- Input method change
-----------------------------------------------
hs.hotkey.bind({"cmd","alt"}, 'space', function()
	if hs.keycodes.currentSourceID() ~= "com.apple.inputmethod.SCIM.ITABC" then
		hs.applescript.applescript('tell application "System Events" to tell process "SystemUIServer" \n tell (1st menu bar item of menu bar 1 whose description is "text input") to {click, click (menu 1\'s menu item "Pinyin - Simplified")} \n end tell ')
	else
		hs.applescript.applescript('tell application "System Events" to tell process "SystemUIServer" \n tell (1st menu bar item of menu bar 1 whose description is "text input") to {click, click (menu 1\'s menu item "U.S.")} \n end tell ')
	end
end)
hs.hotkey.bind({"cmd","alt"}, 'j', function()
	if hs.keycodes.currentSourceID() ~= "com.apple.inputmethod.Kotoeri.Japanese" then
		hs.applescript.applescript('tell application "System Events" to tell process "SystemUIServer" \n tell (1st menu bar item of menu bar 1 whose description is "text input") to {click, click (menu 1\'s menu item "Hiragana")} \n end tell ')
	else
		hs.applescript.applescript('tell application "System Events" to tell process "SystemUIServer" \n tell (1st menu bar item of menu bar 1 whose description is "text input") to {click, click (menu 1\'s menu item "U.S.")} \n end tell ')
	end
end)

-----------------------------------------------
-- mute when connect to select WIFI
-----------------------------------------------
local workWifi = 'CUPD_WIFI'
local outputDeviceName = 'Built-in Output'
hs.wifi.watcher.new(function()
    local currentWifi = hs.wifi.currentNetwork()
    local currentOutput = hs.audiodevice.current(false)
    if not currentWifi then return end
    if (currentWifi == workWifi and currentOutput.name == outputDeviceName) then
        hs.audiodevice.findDeviceByName(outputDeviceName):setOutputMuted(true)
    end
end):start()

-----------------------------------------------
--Simple Vi mode with Hammerspoon (fn+hjkl) 
-----------------------------------------------
local module = {}

module.debugging = false -- whether to print status updates

local eventtap = require "hs.eventtap"
local event    = eventtap.event
local inspect  = require "hs.inspect"

local keyHandler = function(e)
    local watchFor = {
            h = "left",
            j = "down",
            k = "up",
            l = "right"
        }
    local actualKey = e:getCharacters(true)
    local replacement = watchFor[actualKey:lower()]
    if replacement then
        local isDown = e:getType() == event.types.keyDown
        local flags  = {}
        for k, v in pairs(e:getFlags()) do
            if v and k ~= "fn" then -- fn will be down because that's our "wrapper", so ignore it
                table.insert(flags, k)
            end
        end
        if module.debugging then print("viKeys: " .. replacement, inspect(flags), isDown) end
        local replacementEvent = event.newKeyEvent(flags, replacement, isDown)
        if isDown then
            -- allow for auto-repeat
            replacementEvent:setProperty(event.properties.keyboardEventAutorepeat, e:getProperty(event.properties.keyboardEventAutorepeat))
        end
        return true, { replacementEvent }
    else
        return false -- do nothing to the event, just pass it along
    end
end

local modifierHandler = function(e)
    local flags = e:getFlags()
    local onlyControlPressed = false
    for k, v in pairs(flags) do
        onlyControlPressed = v and k == "fn"
        if not onlyControlPressed then break end
    end
    -- you must tap and hold fn by itself to turn this on
    if onlyControlPressed and not module.keyListener then
        if module.debugging then print("viKeys: keyhandler on") end
        module.keyListener = eventtap.new({ event.types.keyDown, event.types.keyUp }, keyHandler):start()
    -- however, adding additional modifiers afterwards is ok... its only when fn isn't down that we switch back off
    elseif not flags.fn and module.keyListener then
        if module.debugging then print("viKeys: keyhandler off") end
        module.keyListener:stop()
        module.keyListener = nil
    end
    return false
end

module.modifierListener = eventtap.new({ event.types.flagsChanged }, modifierHandler)

module.start = function()
    module.modifierListener:start()
end

module.stop = function()
    if module.keyListener then
        module.keyListener:stop()
        module.keyListener = nil
    end
    module.modifierListener:stop()
end

module.start() -- autostart

return module
