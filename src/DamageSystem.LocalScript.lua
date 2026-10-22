-- Damage System for Sword

local sword = script.Parent

local function onTouched(otherPart)
    local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:TakeDamage(10) -- Adjust damage amount as needed
    end
end

sword.Touched:Connect(onTouched)