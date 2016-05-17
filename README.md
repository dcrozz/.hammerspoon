# .hammerspoon
Hammerspoon
====
To make my osx more similiar to my archlinux (with Awesome WM),hammerspoon is the best choice.
Unsolved issue
----
After trying toogleZoom and setFrame and Maximize...
I'm still not capable of setting my Adobe Photoshop CC to fill the screen for unknown reasons.
Please share with me if you can improve it :)
Download
----
The init.lua is [here](https://github.com/dcrozz/.hammerspoon/blob/master/init.lua).
Shortcuts
----
```hyper = cmd + ctrl + shift

hyper + h			set the window to the left
hyper + l			set the window to the right 
hyper + k			set the window to fill the screen
hyper + j			set the window to the center
hyper + e			set the window to lefttop
hyper + r			set the window to righttop
hyper + c			set the window to leftbottom
hyper + v			set the window to rightbottom
hyper + ;			set the window to the next monitor
hyper + `			set the mouse to the center of next monitor
hyper + i			hint
```
#The shortcuts of apps
###Examples
```
local key2App = {
	    w = 'wechat',
		p = 'Adobe Photoshop CC',
		s = 'Sublime Text 2',
		m = 'MacVim'
}
for key, app in pairs(key2App) do
	    hs.hotkey.bind(hyper, key, function() toogleApp(app) end)
end
function toogleApp(_app) 
    frontApp = hs.application.frontmostApplication()
	    if frontApp:title() == _app then
				frontApp:hide()
		else
			hs.application.launchOrFocus(_app)
		end
end
```
If you call "hyper + m", the Macvim will toogle between hide and front(open if it's not been started).
