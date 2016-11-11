Hammerspoon
====
To make my OSX more **Awesomelike** ~~Awesome is the best WM in the world~~,hammerspoon is the best choice.
Unsolved issue
----
After trying toogleZoom and setFrame and Maximize...I'm still not capable of setting my Adobe Photoshop CC to fill the screen for unknown reasons.  
Please share with me if you can improve it :)
Download
----
The init.lua is [here](https://github.com/dcrozz/.hammerspoon/blob/master/init.lua).
Shortcuts
----
		hyper = cmd + ctrl + shift
		hyper + h			set the window to the left
		hyper + l			set the window to the right 
		hyper + k			set the window to fill the screen
		hyper + j			set the window to the center
		hyper + o			set the window to top half
		hyper + .			set the window to bottom half
		hyper + e			set the window to lefttop
		hyper + r			set the window to righttop
		hyper + c			set the window to leftbottom
		hyper + v			set the window to rightbottom
		hyper + ;			set the window to the next monitor
		hyper + `			set the mouse to the center of next monitor
		hyper + i			hint
		hyper + '			rotate the second screen 90
The shortcuts of apps
----
###Examples
```Lua
local key2App = {
	    w = 'wechat',
		p = 'Adobe Photoshop CC',
		s = 'Sublime Text 2',
		m = 'MacVim'
}
```
If you call "hyper + m", the Macvim will **toogle between hide and front**(open if it's not been started).
