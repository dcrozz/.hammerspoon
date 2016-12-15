-- I have give up zoomnig the photoshop cc in my osx 10.11.4
-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"cmd", "ctrl","shift"}
local focus = {"cmd","alt","shift"}
hs.window.animationDuration = 0


-----------------------------------------------
-- Toogle the app
-----------------------------------------------
local key2App = {
    w = 'wechat',
    p = 'Adobe Photoshop CC',
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
    hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

-- hs.hotkey.bind(focus, 'k', function()
--     if hs.window.focusedWindow() then
--         hs.window.focusedWindow():focusWindowNorth()
--     else
--         hs.alert.show("No active window")
--     end
-- end)

-- hs.hotkey.bind(focus, 'j', function()
--     if hs.window.focusedWindow() then
--         hs.window.focusedWindow():focusWindowSouth()
--     else
--         hs.alert.show("No active window")
--     end
-- end)

-- hs.hotkey.bind(focus, 'l', function()
--     if hs.window.focusedWindow() then
--     hs.window.focusedWindow():focusWindowEast()
--     else
--         hs.alert.show("No active window")
--     end
-- end)

-- hs.hotkey.bind(focus, 'h', function()
--     if hs.window.focusedWindow() then
--         hs.window.focusedWindow():focusWindowWest()
--     else
--         hs.alert.show("No active window")
--     end
-- end)
-- Move Mouse to center of next Monitor
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

local caffein = hs.caffeinate.watcher.new(function (state)
    if state ==  hs.caffeinate.watcher.screensDidSleep then
        local wechat =  hs.application.find('wechat')
        wechat:kill()
    end
end)
caffein:start()



-- local caffeine = hs.menubar.new()
-- function setCaffeineDisplay(state)
--     if state then
--         caffeine:setTitle("AWAKE")
--     else
--         caffeine:setTitle("SLEEPY")
--     end
-- end

-- function caffeineClicked()
--     setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
-- end

-- if caffeine then
--     caffeine:setClickCallback(caffeineClicked)
--     setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
-- end


