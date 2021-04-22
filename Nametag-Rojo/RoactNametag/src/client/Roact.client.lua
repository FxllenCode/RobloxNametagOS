-- local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- local Players = game:GetService("Players")

-- local Roact = require(ReplicatedStorage.Common.Roact)

-- local player = game.Players.LocalPlayer
-- local character = player.Character
-- if not character or not character.Parent then
--     character = player.CharacterAdded:Wait()
-- end

-- local app = Roact.createElement("BillboardGui", {
--     Adornee = character:WaitForChild("Head"),
--     AlwaysOnTop = true,
--     Enabled = true,
--     ExtentsOffset = Vector3.new(1, 2, 0),
--     MaxDistance = 15,
--     ResetOnSpawn = true,
--     Size = UDim2.new(2,0,1,0)
-- }, 

-- {
--     HelloWorld = Roact.createElement("TextLabel", {
--         AnchorPoint = Vector2.new(.5,.5),
--         AutomaticSize = "X",
--         BackgroundTransparency = 1,   
--         Size = UDim2.new(1, 0, 1, 0),
--         Font = "Fantasy",
--         LineHeight = 2,
--         Text = Players.LocalPlayer.DisplayName,
--         TextColor3 = Color3.new(30,30,30),
--         TextSize = 20
--     })
-- })

-- Roact.mount(app, character:WaitForChild("Head"))