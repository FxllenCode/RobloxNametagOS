local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    local character = player.Character
    if not character or not character.Parent then
        character = player.CharacterAdded:Wait()
    end
    character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
end)

