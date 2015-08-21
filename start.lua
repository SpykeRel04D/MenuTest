local storyboard = require ("storyboard")
local scene = storyboard.newScene()
local sound = audio.loadSound( "Audio/bsoTotoro.mp3")

function scene:createScene(event)
	local screenGroup = self.view
	background = display.newImage("Images/bg1080.png")
	background.anchorX = 0; background.anchorY=0;
	screenGroup:insert(background)
	audio.play(sound)
end

function start(event)
	if event.phase == "began" then
		storyboard.gotoScene("game","fade",400)
	end
end

function scene:enterScene(event)
	background:addEventListener("touch", start)
end

function scene:exitScene(event)
	background:removeEventListener("touch", start)
end

function scene:destroyScene(event)

end

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "desotroyScene", scene )

return scene