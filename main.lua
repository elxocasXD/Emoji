
STAR = {
    [2273612104] = true;
    [2201428839] = true;
    [2254233493] = true;
}

ADMINS = {
    [3656659459] = true;
    [3597312678] = true;
}
OWNER = {
    [2205701910] = true;
}

function initiateNames()
    game.Players.LocalPlayer.Character.LowerTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if OWNER[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.DisplayName)
            elseif ADMINS[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🔨] ' .. v.DisplayName)
            elseif STAR[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌟] ' .. v.DisplayName)
            elseif not v.Character.LowerTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👤] ' .. v.DisplayName)
            end
        end
    end
end

Heartbeat = game:GetService("RunService").Heartbeat:Connect(function()   
local successful, errored = pcall(initiateNames)
end)
