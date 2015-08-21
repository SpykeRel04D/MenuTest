local storyboard = require ("storyboard")
local scene = storyboard.newScene()

function scene:createScene(event)
	local background = display.newImage("Images/gamebg1080.png")
	background.anchorX = 0; background.anchorY=0;
end

function start(event)

end

function scene:enterScene(event)

end

function scene:exitScene(event)

end

function scene:destroyScene(event)

end

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "desotroyScene", scene )

return scene