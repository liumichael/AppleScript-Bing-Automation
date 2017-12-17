property counter : 0
property link : "http://www.bing.com/search?q="
repeat 30 times
	tell application "Safari"
		set currLink to link & counter
		open location currLink
		set counter to counter + 1
		activate
	end tell
end repeat
