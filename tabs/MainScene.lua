-- MainScene
-- Lesson8

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

--global to this file
local buttonToSettings
local buttonToCredits
    
function MainScene:init()
    --sprite()
    buttonToSettings = SpriteObject("Dropbox:Blue Settings Button", vec2(WIDTH/2-100, HEIGHT/2))
    buttonToCredits = SpriteObject("Dropbox:Blue Info Button", vec2(WIDTH/2+100, HEIGHT/2))
    buttonToSettings.draggable = false
    buttonToCredits.draggable = false 
    
    music("A Hero's Quest:Battle", true, 0.25) -- plays music
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 234, 255, 255)
    buttonToSettings:draw()
    buttonToCredits:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Main", WIDTH/2, HEIGHT/2+300) --title
    fontSize(48)
    text("Settings", WIDTH/2-100, HEIGHT/2+100) --subtitle
    text("Credits", WIDTH/2+100, HEIGHT/2+100) --subtitle
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    buttonToSettings:touched(touch)
    buttonToCredits:touched(touch)
    
    if(buttonToSettings.selected == true) then
        Scene.Change("settings")
    elseif(buttonToCredits.selected == true) then
        Scene.Change("credits")
    end
end