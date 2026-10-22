-- SlashSword.LocalScript.lua

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local sword = character:WaitForChild("Sword") -- Replace "Sword" with the actual name of your sword

local function slash()
    -- Animation logic for slashing the sword
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://YOUR_ANIMATION_ID" -- Replace with your animation ID
    
    local animationTrack = character.Humanoid:LoadAnimation(animation)
    animationTrack:Play()
    
    -- Add any additional effects or logic for the slash here
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.E then -- Change the key as needed
        slash()
    end
end)
