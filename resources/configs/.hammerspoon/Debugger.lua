-- Print keycode on keydown event
if isDebug == true then
    hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(evt)
        print(evt:getKeyCode())
    end):start()
end

