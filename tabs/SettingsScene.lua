-- SettingsScene
-- Lesson8

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the settings scene

SettingsScene = class()

--global to this file
local buttonToMainScene

function SettingsScene:init()
    -- you can accept and set parameters here
   buttonToMainScene = SpriteObject("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2-200))
   music.stop()
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    background(103, 221, 27, 255)
    
    buttonToMainScene:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Settings", WIDTH/2, HEIGHT/2+300) --title
    fontSize(48)
    text("Main", WIDTH/2, HEIGHT/2-100) --subtitle
    
    --extra stuff
    fill(255, 255, 255, 255)
    fontSize(55)
    text("Music", WIDTH/2-100, HEIGHT/2+100)
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    buttonToMainScene:touched(touch)
    
    if(buttonToMainScene.selected == true) then
        Scene.Change("play")
    end
end