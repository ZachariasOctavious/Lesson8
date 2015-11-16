-- CreditsScene
-- Lesson8

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the credits scene

CreditsScene = class()

--global to this file
local buttonToMainScene

function CreditsScene:init()
    -- you can accept and set parameters here
    buttonToMainScene = SpriteObject("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2-200))
    music.stop()
end

function CreditsScene:draw()
    -- Codea does not automatically call this method
    background(255, 8, 0, 255)
    
    buttonToMainScene:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Credits", WIDTH/2, HEIGHT/2+300) --title
    fontSize(48)
    text("Main", WIDTH/2, HEIGHT/2-100) --subtitle
    
    --extra stuff
    fill(255, 255, 255, 255)
    fontSize(55)
    text("Programmer ... Zach", WIDTH/2, HEIGHT/2+100)
    text("Artwork ... Grade 3s", WIDTH/2, HEIGHT/2+50)
end

function CreditsScene:touched(touch)
    -- Codea does not automatically call this method
    buttonToMainScene:touched(touch)
    
    if(buttonToMainScene.selected == true) then
        Scene.Change("play")
    end
end