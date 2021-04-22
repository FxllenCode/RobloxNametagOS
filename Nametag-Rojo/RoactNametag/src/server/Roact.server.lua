local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Roact = require(ReplicatedStorage.Common.Roact2)



Players.PlayerAdded:Connect(function(player)

    
local character = player.Character
if not character or not character.Parent then
    character = player.CharacterAdded:Wait()
end

local app = Roact.createElement("BillboardGui", {
    Adornee = character:WaitForChild("Head"),
    AlwaysOnTop = true,
    Enabled = true,
    ExtentsOffset = Vector3.new(1, 2, 0),
    MaxDistance = 15,
    ResetOnSpawn = true,
    Size = UDim2.new(2,0,1,0)
}, 

{
    DisplayName = Roact.createElement("TextLabel", {
        AnchorPoint = Vector2.new(.5,.5),
        AutomaticSize = "X",
        BackgroundTransparency = 1,   
        Size = UDim2.new(1, 0, 1, 0),
        Font = "Fantasy",
        LineHeight = 3,
        Text = player.DisplayName,
        TextColor3 = Color3.new(30,30,30),
        TextSize = 15}),

        Name = Roact.createElement("TextLabel", {
            AnchorPoint = Vector2.new(.5,.5),
            AutomaticSize = "X",
            BackgroundTransparency = 1,   
            Size = UDim2.new(1, 0, 1, 0),
            Font = "Fantasy",
            LineHeight = 1,
            RichText = true,
            Text = " <b> ".." <i> ".."@"..player.Name.." </i> ".." </b> ",
            TextColor3 = Color3.new(0.8, 0.8, 0.8),
            TextSize = 10,
            TextStrokeColor3 = Color3.fromRGB(94,94,94),
            TextStrokeTransparency = .6}),    

})
-- {
--      Name = Roact.createElement("TextLabel", {
--         AnchorPoint = Vector2.new(.5,.5),
--         AutomaticSize = "X",
--         BackgroundTransparency = 1,   
--         Size = UDim2.new(1, 0, 1, 0),
--         Font = "Fantasy",
--         LineHeight = 0,
--         Text = player.DisplayName,
--         TextColor3 = Color3.new(30,30,30),
--         TextSize = 15
--     })
-- }

Roact.mount(app, character:WaitForChild("Head"))

end)
