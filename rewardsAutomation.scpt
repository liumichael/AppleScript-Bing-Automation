property counter : 0
property link : "http://www.bing.com/search?q="
property mobile : "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.3 Mobile/14E277 Safari/603.1.30"

repeat 30 times
	tell application "Safari"
		set currLink to link & counter
		open location currLink
		set counter to counter + 1
		activate
	end tell
	delay 2
end repeat

tell application "System Events" to tell process "Safari"
	set frontmost to true
	click menu item "Other…" of menu 1 of menu item "User Agent" of menu 1 of menu bar item "Develop" of menu bar 1
	
	delay 0.5
	tell window 1's sheet 1
		tell scroll area 1's text area 1 to set value to mobile
		tell button "OK" to click
	end tell
end tell

set counter to 0

repeat 20 times
	tell application "Safari"
		set currLink to link & counter
		open location currLink
		set counter to counter + 1
		activate
	end tell
	delay 2
end repeat
