if workspace:FindFirstChild("hardcoreInit") then
    return
else
    local vu1 = 20
    local vu2 = 0
    local v3 = tick()
    local vu4 = Instance.new("Hint", workspace)
    vu4.Text = "Started Loading Hardcore"
    function updt()
        game:GetService("RunService").RenderStepped:Wait()
        vu2 = vu2 + 1
        vu4.Text = string.format("Loading Hardcore... %s / %s", tostring(vu2), tostring(vu1))
    end
    local vu5 = game:GetObjects("rbxassetid://12272255258")[1]
    updt()
    local vu6 = game:GetObjects("rbxassetid://12272798431")[1]
    updt()
    local vu7 = game:GetObjects("rbxassetid://12254145022")[1]
    updt()
    local vu8 = game:GetObjects("rbxassetid://12262854624")[1]
    updt()
    local vu9 = game:GetObjects("rbxassetid://12797547314")[1]
    updt()
    local vu10 = game:GetObjects("rbxassetid://11547803978")[1]
    updt()
    local vu11 = game:GetObjects("rbxassetid://12543866876")[1] or nil
    updt()
    local function v15(p12, p13)
        writefile(p13 .. ".mp3", game:HttpGet(p12))
        local v14 = Instance.new("Sound")
        v14.SoundId = (getcustomasset or getsynasset)(p13 .. ".mp3")
        return v14
    end
    function GetGitSoundID(p16, p17)
        FileName = tostring(p17)
        writefile("customObject_Sound_" .. FileName .. ".mp3", game:HttpGet(p16))
        return (getcustomasset or getsynasset)("customObject_Sound_" .. FileName .. ".mp3")
    end
    local vu18 = v15("https://github.com/thatstinknoon/goob/blob/main/Followed..mp3?raw=true", "followed")
    updt()
    local vu19 = v15("https://github.com/thefigureblack/audios/blob/main/asixtyScareOmg.mp3?raw=true", "asixtyScareOmg")
    updt()
    local vu20 = v15("https://github.com/thatstinknoon/ReboundMain/blob/main/ReboundMoving.mp3?raw=true", "ReboundMoving")
    updt()
    local vu21 = v15("https://github.com/thatstinknoon/ReboundMain/blob/main/KILL.mp3?raw=true", "ReboundMurder")
    updt()
    local vu22 = v15("https://github.com/thatstinknoon/ReboundMain/blob/main/ReboundWarning.mp3?raw=true", "ReboundWarning")
    updt()
    local vu23 = Instance.new("Sound")
    local vu24 = v15("https://github.com/XAtomMaster339871/dkrsoilcfrkjghfhgrthngnrtuyghrtuhngur/blob/main/death.mp3?raw=true", "NOOO")
    updt()
    local vu25 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Ambience_Infirmary_Entrence.mp3?raw=true", "infermy")
    updt()
    local vu26 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Dark-Depths_Entrencebetter.mp3?raw=true", "dork")
    updt()
    local vu27 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Here%20i%20come%20but%20WHAT%20THE%20FUCK.mp3?raw=true", "NewSeek")
    updt()
    local vu28 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/raw/main/Figure%20Ambience.mp3?raw=true", "NewFigure")
    updt()
    local vu29 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Figure%20End.mp3?raw=true", "NewFigureEnd")
    updt()
    local vu30 = GetGitSoundID("https://github.com/Sosnen/Ping-s-Dumbass-projects-/blob/main/Figure%20Start.mp3?raw=true", "NewFigureStart")
    updt()
    vu4.Text = "Done! Took: " .. tostring(tick() - v3)
    game.Debris:AddItem(vu4, 3)
    local vu31 = {
        MainGame = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
    }
    local vu32 = false
    local vu33 = false
    local vu34 = game:GetService("ReplicatedStorage").Sounds:FindFirstChild("LA_The Hotel")
    function PreloadSounds(p35, p36)
        if not game:GetService("ReplicatedStorage").Sounds:FindFirstChild("LA_" .. p35) then
            Sound = vu34:Clone()
            Sound.SoundId = p36
            Sound.Parent = game:GetService("ReplicatedStorage").Sounds
            Sound.Name = "LA_" .. p35
        end
    end
    print("Loade")
    game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music.Blue.SoundId = "rbxassetid://10472612727"
    game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music.Blue.Pitch = 0.55
    game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)
    game.Lighting.FogStart = 5
    game.Lighting.FogEnd = 800
    game.ReplicatedStorage.Sounds.BulbZap.SoundId = "rbxassetid://4398878054"
    local v37 = game.ReplicatedStorage.GameData.LatestRoom.Value
    local v38 = workspace.CurrentRooms[v37]
    function changedoormaterial(p39)
        p39.Door.Material = "DiamondPlate"
        p39.Door.Color = Color3.fromRGB(80, 80, 80)
        p39.Door.Sign.Material = "Metal"
        p39.Door.Sign.Color = Color3.fromRGB(111, 111, 111)
        p39.Sign.Stinker.TextColor3 = Color3.new(0.8, 0.8, 0.8)
        p39.Sign.Stinker.Highlight.TextColor3 = Color3.new(0.6, 0.6, 0.6)
    end
    function message2(p40, p41)
        PreloadSounds(p40, p41)
        gameid = game.PlaceId
        Length = Length or 5
        if gameid ~= 6839171747 then
            if gameid == 6516141723 then
                game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.Reminder.Enabled = true
                M = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby)
            end
        else
            game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Reminder.Enabled = true
            M = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        end
        M.titlelocation(p40)
    end
    local function vu43(p42)
        vu31.MainGame.caption(p42, true, 4)
    end
    function ChangeStyle(p44, p45)
        wait(0)
        if (p45 or "Idk") == "Chandelier" then
            local v46, v47, v48 = pairs(p44.Assets:GetDescendants())
            while true do
                local v49
                v48, v49 = v46(v47, v48)
                if v48 == nil then
                    break
                end
                if v49.Name == "Chandelier" then
                    v49:Destroy()
                end
            end
        else
            local v50, v51, v52 = pairs(p44.Assets.Light_Fixtures:GetDescendants())
            while true do
                local v53
                v52, v53 = v50(v51, v52)
                if v52 == nil then
                    break
                end
                if v53.Name == "LightStand" then
                    if game.ReplicatedStorage.GameData.LatestRoom.Value >= 51 then
                        v53:Destroy()
                    else
                        local vu54 = vu11:Clone()
                        vu54.Parent = p44.Assets.Light_Fixtures
                        vu54.LightFixture.PointLight.Changed:Connect(function()
                            vu54.LightFixture.Neon.atachm["Ok you cannot tell me this isnt good"].Enabled = vu54.LightFixture.PointLight.Enabled
                            vu54.LightFixture.Neon["Bright sh idfk"].ParticleEmitter.Enabled = vu54.LightFixture.PointLight.Enabled
                            vu54.LightFixture:WaitForChild("Dust").ParticleEmitter.Enabled = vu54.LightFixture.PointLight.Enabled
                        end)
                        local v55 = vu54
                        vu54.PivotTo(v55, v53:GetPivot())
                        v53:Destroy()
                    end
                end
            end
        end
    end
    local v56, v57, v58 = pairs(game.ReplicatedStorage.Misc.Eyes:GetDescendants())
    local vu59 = vu31
    while true do
        local v60
        v58, v60 = v56(v57, v58)
        if v58 == nil then
            break
        end
        if v60.Name == "Eye" and v60:IsA("Model") then
            v60:FindFirstChild("Veins").Decal.Texture = "rbxassetid://1882220622"
        end
    end
    ChangeStyle(v38)
    spawn(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        print("Something much more deeper has begun.")
    end)
    local vu61 = false
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function(p62)
        if vu61 then
            if p62 > 5 or vu33 then
                ChangeStyle(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], "Chandelier")
            end
            if p62 == 3 then
                message2("The Library", "rbxassetid://1835274270")
            elseif p62 > 2 and (workspace.CurrentRooms[p62]:FindFirstChild("Assets"):FindFirstChild("Bed_Infirmary") and p62 < 80) then
                Sound = vu25
                message2("The Infirmary", Sound)
            elseif p62 > 1 and (workspace.CurrentRooms[p62]:FindFirstChild("Assets"):FindFirstChild("Garden_LanternUnique") and p62 < 99) then
                message2("The CourtYard", "rbxassetid://7132953277")
            end
            if p62 == 4 then
                vu33 = true
                vu32 = true
                Sound = vu26
                task.spawn(function()
                    message2("The Dark Depths", Sound)
                end)
            elseif p62 == 6 then
                message2("The Lonely Garden", "rbxassetid://1847269119")
            elseif p62 == 7 then
                message2("The Abandoned Power Station", "rbxassetid://1837449237")
            end
            local v63 = game.ReplicatedStorage.GameData.LatestRoom.Value
            local v64 = workspace.CurrentRooms[v63]
            ChangeStyle(v64)
        else
            if p62 > 52 or vu33 then
                ChangeStyle(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], "Chandelier")
            end
            if p62 == 49 then
                message2("The Library", "rbxassetid://1835274270")
            elseif p62 > 64 and (workspace.CurrentRooms[p62]:FindFirstChild("Assets"):FindFirstChild("Bed_Infirmary") and p62 < 80) then
                Sound = vu25
                message2("The Infirmary", Sound)
            elseif p62 > 80 and (workspace.CurrentRooms[p62]:FindFirstChild("Assets"):FindFirstChild("Garden_LanternUnique") and p62 < 99) then
                message2("The CourtYard", "rbxassetid://7132953277")
            end
            if p62 == 53 then
                vu33 = true
                vu32 = true
                Sound = vu26
                task.spawn(function()
                    message2("The Dark Depths", Sound)
                end)
            elseif p62 == 90 then
                message2("The Lonely Garden", "rbxassetid://1847269119")
            elseif p62 == 100 then
                message2("The Abandoned Power Station", "rbxassetid://1837449237")
            end
            local v65 = game.ReplicatedStorage.GameData.LatestRoom.Value
            local v66 = workspace.CurrentRooms[v65]
            ChangeStyle(v66)
        end
    end)
    workspace.Ambience_Dark.Played:Connect(function()
        vu33 = true
        wait(0.01)
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets.Light_Fixtures:Destroy()
        workspace.Ambience_Dark:Stop()
        game.Lighting.FogStart = 10
        game.Lighting.FogEnd = 10000000
    end)
    local v67 = game.Players.LocalPlayer.PlayerGui
    local v68 = Instance.new("Frame")
    local v69 = Instance.new("ImageLabel")
    local v70 = Instance.new("UICorner")
    local v71 = Instance.new("UIPadding")
    local v72 = Instance.new("Frame")
    local v73 = Instance.new("UICorner")
    local v74 = Instance.new("UIPadding")
    local vu75 = Instance.new("Frame")
    local v76 = Instance.new("UICorner")
    local v77 = Instance.new("ScreenGui")
    v77.Name = "StaminaGui"
    v77.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    v77.Enabled = true
    v77.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    v68.Name = "Sprint"
    v68.Parent = v77
    v68.AnchorPoint = Vector2.new(0, 1)
    v68.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v68.BackgroundTransparency = 1
    v68.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
    v68.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
    v68.SizeConstraint = Enum.SizeConstraint.RelativeYY
    v68.ZIndex = 1005
    v69.Parent = v68
    v69.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
    v69.Size = UDim2.new(1, 0, 1, 0)
    v69.SizeConstraint = Enum.SizeConstraint.RelativeYY
    v69.Visible = false
    v70.CornerRadius = UDim.new(1, 0)
    v70.Parent = v69
    v71.Parent = v68
    v71.PaddingBottom = UDim.new(0.300000012, - 5)
    v71.PaddingLeft = UDim.new(0.0199999996, 0)
    v71.PaddingRight = UDim.new(0.0500000007, - 15)
    v71.PaddingTop = UDim.new(0.300000012, - 5)
    v72.Name = "Bar"
    v72.Parent = v68
    v72.AnchorPoint = Vector2.new(0, 0.5)
    v72.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
    v72.BackgroundTransparency = 0.7
    v72.Position = UDim2.new(- 7.72600269, 0, 0.499999672, 0)
    v72.Size = UDim2.new(6.60599804, 0, 0.600000083, 0)
    v72.ZIndex = 0
    v73.CornerRadius = UDim.new(0.25, 0)
    v73.Parent = v72
    v74.Parent = v72
    v74.PaddingBottom = UDim.new(0, 4)
    v74.PaddingLeft = UDim.new(0, 4)
    v74.PaddingRight = UDim.new(0, 4)
    v74.PaddingTop = UDim.new(0, 4)
    vu75.Name = "Fill"
    vu75.Parent = v72
    vu75.AnchorPoint = Vector2.new(0, 0.5)
    vu75.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
    vu75.Position = UDim2.new(0, 0, 0.5, 0)
    vu75.Size = UDim2.new(1, 0, 1, 0)
    vu75.ZIndex = 2
    v76.CornerRadius = UDim.new(0.25, 0)
    v76.Parent = vu75
    local v78 = Instance.new("ScreenGui")
    local vu79 = Instance.new("ImageLabel")
    v78.IgnoreGuiInset = true
    v78.Name = "erm"
    v78.Parent = v67
    v78.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    vu79.Parent = v78
    vu79.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu79.BackgroundTransparency = 1
    vu79.Size = UDim2.new(1, 0, 0.998717964, 0)
    vu79.Image = "rbxassetid://190596490"
    vu79.ImageColor3 = Color3.fromRGB(0, 0, 0)
    vu79.ImageTransparency = 1
    local v80 = game:GetService("Players")
    local vu81 = game:GetService("UserInputService")
    local v82 = v80.LocalPlayer
    local vu83 = v82.Character or v82.CharacterAdded:Wait()
    local vu84 = vu83:WaitForChild("Humanoid")
    local vu85 = 100
    local vu86 = 100
    local vu87 = false
    local vu88 = false
    local vu89 = nil
    vu89 = hookmetamethod(game, "__newindex", newcclosure(function(p90, p91, p92)
        if p91 == "WalkSpeed" then
            local v93
            if vu59.MainGame.chase then
                v93 = vu59.MainGame.crouching and 15 or 27
            elseif vu59.MainGame.crouching then
                v93 = isSprinting and 12 or 10
            else
                v93 = isSprinting and 20 or 13
            end
            p92 = vu81.TouchEnabled and vu88 and (vu59.MainGame.chase and 27 or 21) or v93
        end
        return vu89(p90, p91, p92)
    end))
    local vu94 = math.max(7 - 1, 1)
    local vu95 = game.TweenService:Create(vu79, TweenInfo.new(12), {
        ImageTransparency = 0
    })
    if vu81.TouchEnabled then
        local v96 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
        v96.Name = "StaminaGui"
        v96.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        v96.Enabled = true
        v96.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local v97 = Instance.new("TextButton", v96)
        v97.Name = "SprintButton"
        v97.BackgroundTransparency = 0.5
        v97.BackgroundColor3 = Color3.new(0, 0, 0)
        v97.Position = UDim2.new(1, - 200, 1, - 250)
        v97.Size = UDim2.new(0, 65, 0, 65)
        v97.Text = "Sprint"
        v97.TextColor3 = Color3.new(1, 1, 1)
        v97.FontFace = Font.new("rbxasset://fonts/families/Oswald.json", Enum.FontWeight.Light)
        v97.TextScaled = true
        Instance.new("UICorner", v97).CornerRadius = UDim.new(0, 50)
        local v98 = Instance.new("UIStroke", v97)
        v98.ApplyStrokeMode = 0
        v98.Thickness = 2
        v97.MouseButton1Click:Connect(function()
            if not (vu87 or vu59.MainGame.crouching or vu83:GetAttribute("Hiding")) then
                if isSprinting ~= true then
                    isSprinting = true
                    vu84:SetAttribute("SpeedBoost", 4)
                    vu95:Play()
                    while vu81.TouchEnabled and (vu85 > 0 and isSprinting) do
                        vu85 = math.max(vu85 - 1, 0)
                        vu84.WalkSpeed = 21
                        vu75.Size = UDim2.new(1 / vu86 * vu85, 1, 1, 0)
                        task.wait(vu94 / 100)
                    end
                    if vu85 ~= 0 then
                        vu87 = false
                        Spawn(function()
                            vu87 = false
                        end)
                        vu84:SetAttribute("SpeedBoost", 0)
                        game.TweenService:Create(vu79, TweenInfo.new(1), {
                            ImageTransparency = 1
                        }):Play()
                        while not isSprinting do
                            isSprinting = false
                            vu84.WalkSpeed = 12
                            vu85 = math.min(vu85 + 1, vu86)
                            vu75.Size = UDim2.new(1 / vu86 * vu85, 1, 1, 0)
                            task.wait(vu94 / 100)
                        end
                    else
                        isSprinting = false
                        vu84:SetAttribute("SpeedBoost", 0)
                        vu43("You\'re exhausted.")
                        local v99 = Instance.new("Sound", workspace)
                        v99.SoundId = "rbxassetid://8258601891"
                        v99.Volume = 0.8
                        v99.PlayOnRemove = true
                        v99:Destroy()
                        vu87 = true
                        game.TweenService:Create(vu79, TweenInfo.new(0.3), {
                            ImageTransparency = 0
                        }):Play()
                        wait(0.3)
                        game.TweenService:Create(vu79, TweenInfo.new(10), {
                            ImageTransparency = 1
                        }):Play()
                        for v100 = 1, vu86 do
                            vu85 = v100
                            vu75.Size = UDim2.new(1 / vu86 * v100, 1, 1, 0)
                            vu84.WalkSpeed = 12
                            task.wait(vu94 / 80)
                        end
                        vu87 = false
                    end
                else
                    isSprinting = false
                    vu95:Pause()
                    isSprinting = false
                    vu84:SetAttribute("SpeedBoost", 0)
                    game.TweenService:Create(vu79, TweenInfo.new(1), {
                        ImageTransparency = 1
                    }):Play()
                end
            end
        end)
    end
    vu81.InputBegan:Connect(function(p101, p102)
        if not p102 and (p101.KeyCode == Enum.KeyCode.Q and not (vu87 or vu59.MainGame.crouching)) then
            isSprinting = true
            vu84:SetAttribute("SpeedBoost", 4)
            vu95:Play()
            while vu81:IsKeyDown(Enum.KeyCode.Q) and vu85 > 0 do
                vu85 = math.max(vu85 - 1, 0)
                vu84.WalkSpeed = 21
                vu75.Size = UDim2.new(1 / vu86 * vu85, 1, 1, 0)
                task.wait(vu94 / 100)
            end
            vu95:Pause()
            isSprinting = false
            vu84:SetAttribute("SpeedBoost", 0)
            game.TweenService:Create(vu79, TweenInfo.new(1), {
                ImageTransparency = 1
            }):Play()
            vu84.WalkSpeed = 12
            if vu85 ~= 0 then
                vu87 = false
                Spawn(function()
                    vu87 = false
                end)
                game.TweenService:Create(vu79, TweenInfo.new(1), {
                    ImageTransparency = 1
                }):Play()
                while not vu81:IsKeyDown(Enum.KeyCode.Q) do
                    vu85 = math.min(vu85 + 1, vu86)
                    vu75.Size = UDim2.new(1 / vu86 * vu85, 1, 1, 0)
                    vu84.WalkSpeed = 12
                    task.wait(vu94 / 50)
                end
            else
                vu84:SetAttribute("SpeedBoost", 0)
                vu43("You\'re exhausted.")
                local v103 = Instance.new("Sound", workspace)
                v103.SoundId = "rbxassetid://8258601891"
                v103.Volume = 0.8
                v103.PlayOnRemove = true
                v103:Destroy()
                vu87 = true
                game.TweenService:Create(vu79, TweenInfo.new(0.3), {
                    ImageTransparency = 0
                }):Play()
                wait(0.3)
                game.TweenService:Create(vu79, TweenInfo.new(10), {
                    ImageTransparency = 1
                }):Play()
                for v104 = 1, vu86 do
                    vu85 = v104
                    vu75.Size = UDim2.new(1 / vu86 * v104, 1, 1, 0)
                    vu84.WalkSpeed = 12
                    task.wait(vu94 / 50)
                end
                vu87 = false
            end
        end
    end)
    vu84:SetAttribute("SpeedBoost", 0)
    vu84.WalkSpeed = 12
    local vu105 = nil
    local vu106 = false
    vu83.ChildAdded:Connect(function(p107)
        if p107.Name == "Vitamins" then
            local v108 = vu83:FindFirstChild("Vitamins")
            vu105 = v108.Activated:Connect(function()
                if vu106 then
                    return false
                end
                vu106 = true
                vu83.Humanoid.Health = vu83.Humanoid.Health + 30
                vu85 = 100
                task.delay(10, function()
                    vu106 = false
                end)
            end)
            v108.Unequipped:Connect(function()
                vu105:Disconnect()
                print("test")
            end)
        end
    end)
    function DEATHMESSAGE(pu109, pu110)
        spawn(function()
            for _ = 1, 50 do
                wait()
                game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = pu110
                firesignal(game:GetService("ReplicatedStorage").RemotesFolder.DeathHint.OnClientEvent, pu109, "Blue")
            end
        end)
    end
    if game.ReplicatedStorage.GameData.LatestRoom.Value <= 1 then
        game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function(p111)
            if game:GetService("Workspace").CurrentRooms[p111]:FindFirstChild("PathfindNodes") then
                L = game:GetService("Workspace").CurrentRooms[p111].PathfindNodes:Clone()
                L.Parent = game:GetService("Workspace").CurrentRooms[p111]
                L = game:GetService("Workspace").CurrentRooms[p111].PathfindNodes:Clone()
                L.Parent = game:GetService("Workspace").CurrentRooms[p111]
                L.Name = "Nodes"
            end
        end)
        delay(0, function()
            game:GetService("Players").LocalPlayer.PlayerGui.MainUI.AchievementsHolder.ChildAdded:Connect(function(p112)
                if p112.Name == "LiveAchievement" and (BadgeId or getgenv().BadgeId) then
                    local v113, v114 = pcall(function()
                        return game:GetService("BadgeService"):GetBadgeInfoAsync(BadgeId).IconImageId
                    end)
                    if v113 then
                        print(v114)
                        p112.Frame.ImageLabel.Image = "rbxassetid://" .. tostring(v114)
                    end
                end
            end)
        end)
        Instance.new("BoolValue", workspace).Name = "hardcoreInit"
        game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
        delay(0, function()
            local v115 = {
                "Have fun! (you wont)",
                "Good luck!",
                "Extra help by realCat#3509",
                "Do Not.",
                "Fuck L_0 All my homies hate L_0",
                "Holy ####... Lois",
                "who tf is joe????"
            }
            vu43("Hardcore Initiated")
            task.wait(2)
            vu43("Made by noonie#0001 (Scripter) and Ping#1841 (Music composer and Modeler)")
            task.wait(4)
            vu43("Fixed version by dripocapy, (Unofficial)")
            wait(2)
            vu43(v115[math.random(1, # v115)])
        end)
        delay(0, function()
            ({}).Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
            workspace.DescendantAdded:Connect(function(p116)
                if p116.Parent ~= nil and (p116 ~= nil and p116:IsA("Sound")) then
                    if p116.Name == "SeekMusic" and p116.Parent.Name == "SeekMovingNewClone" then
                        p116.Volume = 2.2
                        p116.SoundId = vu27
                    end
                    if p116.Parent.Name == "FigureSetup" then
                        if p116.Name == "Ambience" then
                            p116.SoundId = vu28
                        end
                        if p116.Name == "AmbienceEnd" then
                            p116.SoundId = vu29
                        end
                        if p116.Name == "AmbienceStart" then
                            p116.SoundId = vu30
                        end
                    end
                end
            end)
        end)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            wait(3.5)
            if workspace:FindFirstChild("SeekMovingNewClone") then
                local vu117 = workspace:FindFirstChild("SeekMovingNewClone")
                local vu118 = vu117:FindFirstChild("SeekRig")
                local vu119 = game:GetObjects("rbxassetid://11664451634")[1]
                vu119.Name = "seek2"
                local v120, v121, v122 = pairs(vu119.Figure:GetChildren())
                while true do
                    local v123
                    v122, v123 = v120(v121, v122)
                    if v122 == nil then
                        break
                    end
                    if v123:IsA("Sound") then
                        v123:Stop()
                    end
                end
                vu118.Head.Eye:Destroy()
                vu118.Head.Black:Destroy()
                vu119.Parent = workspace
                local vu124 = vu119:FindFirstChild("SeekRig")
                local v125 = vu124
                vu124.FindFirstChild(v125, "Root").Anchored = true
                spawn(function()
                    while game["Run Service"].Heartbeat:Wait() and vu117 do
                        if vu118:FindFirstChild("Root") then
                            local v126 = vu118
                            vu124:FindFirstChild("Root").CFrame = v126:FindFirstChild("Root").CFrame
                        end
                        local v127, v128, v129 = pairs(vu117.Figure:GetChildren())
                        while true do
                            local v130
                            v129, v130 = v127(v128, v129)
                            if v129 == nil then
                                break
                            end
                            vu117.Figure.Footsteps:Stop()
                            vu117.Figure.FootstepsFar:Stop()
                        end
                        local v131 = vu118
                        local v132, v133, v134 = pairs(v131:GetChildren())
                        while true do
                            local v135
                            v134, v135 = v132(v133, v134)
                            if v134 == nil then
                                break
                            end
                            if v135:IsA("BasePart") then
                                v135.Transparency = 1
                            end
                        end
                    end
                end)
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
                local v136 = vu124
                repeat
                    task.wait()
                until vu117.SeekMusic.IsPlaying == true
                warn("Playing")
                spawn(function()
                    wait(7)
                    local v137 = vu119.Figure
                    v137.FootstepsFar:Play()
                    v137.Footsteps:Play()
                    v137.Splashing:Play()
                    v137["Splashing Far"]:Play()
                end)
                local v138 = v136.AnimationController:LoadAnimation(v136.AnimRaise)
                v138:Play()
                v138.Stopped:Wait()
                v136.AnimationController:LoadAnimation(v136.AnimRun):Play()
            end
        end)
        local vu139 = 1
        local vu140 = {
            {
                "rbxassetid://11881132074",
                "Despair"
            },
            {
                "rbxassetid://11881132745",
                "Odd feline Specimen"
            },
            {
                "rbxassetid://11881654771",
                "A tryhard..."
            },
            {
                "rbxassetid://7084794697",
                "him."
            }
        }
        game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Connect(function()
            local v141 = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
            if v141:FindFirstChild("Assets") then
                local v142 = next
                local v143, v144 = v141:FindFirstChild("Assets"):GetChildren()
                local v145 = {}
                while true do
                    local v146
                    v144, v146 = v142(v143, v144)
                    if v144 == nil then
                        break
                    end
                    if v146.Name:find("Painting") then
                        table.insert(v145, v146)
                    end
                end
                if # v145 > 0 then
                    local v147
                    if v145[# v145] then
                        vu139 = vu139 + 1
                        v147 = v145[# v145]
                    else
                        v147 = v145[1]
                    end
                    if v147 and v147:FindFirstChild("Canvas") then
                        local vu148 = vu140[math.random(1, # vu140)]
                        if v147:FindFirstChild("InteractPrompt") then
                            local v149 = v147:FindFirstChild("InteractPrompt"):Clone()
                            v149.Name = "fakeInteract"
                            v149.Parent = v147
                            v147:FindFirstChild("InteractPrompt"):Destroy()
                            v149.Triggered:Connect(function()
                                vu43(string.gsub("This painting is titled \"NAMEOFTHING\"", "NAMEOFTHING", vu148[2]))
                            end)
                        end
                        v147:FindFirstChild("Canvas"):FindFirstChildOfClass("SurfaceGui"):FindFirstChildOfClass("ImageLabel").Image = vu148[1]
                    end
                end
            end
        end)
        spawn(function()
            getgenv().death = false
            local function vu163()
                while true do
                    wait(450)
                    if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                        break
                    end
                    local v150 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                    local v151 = v150.createEntity({
                        Model = "12262883448",
                        Speed = 25,
                        DelayTime = 0,
                        HeightOffset = 0,
                        CanKill = true,
                        BreakLights = true,
                        FlickerLights = {
                            true,
                            80
                        },
                        Cycles = {
                            Min = 1,
                            Max = 1,
                            WaitTime = 0.1
                        },
                        CamShake = {
                            false,
                            {
                                5,
                                15,
                                0.1,
                                1
                            },
                            10
                        },
                        Jumpscare = {
                            true,
                            {
                                Image1 = "rbxassetid://11394027278",
                                Image2 = "rbxassetid://11395249153",
                                Shake = true,
                                Sound1 = {
                                    10483790459,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Sound2 = {
                                    10483837590,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Flashing = {
                                    true,
                                    Color3.fromRGB(48, 25, 52)
                                },
                                Tease = {
                                    Min = 1,
                                    Max = 1,
                                    false
                                }
                            }
                        },
                        CustomDialog = {
                            "You died to whom you call The Deer God",
                            "Closets Wont work! So try running",
                            "Its form is incomprehensible to a human upclose...",
                            "..-so avoid Eye Contact"
                        }
                    })
                    local vu152 = vu18:Clone()
                    vu152.Parent = workspace
                    vu152.Volume = 0
                    local vu153 = require(game.ReplicatedStorage.CameraShaker)
                    local vu154 = workspace.CurrentCamera
                    local vu156 = vu153.new(Enum.RenderPriority.Camera.Value, function(p155)
                        vu154.CFrame = vu154.CFrame * p155
                    end)
                    local v157 = vu156
                    vu156.Start(v157)
                    function v151.Debug.OnEntitySpawned(_)
                        vu152:Play()
                        game.TweenService:Create(vu152, TweenInfo.new(5), {
                            Volume = 0.7
                        }):Play()
                        vu156:ShakeSustain(vu153.Presets.Earthquake)
                    end
                    function v151.Debug.OnEntityDespawned(_)
                        vu156:StopSustained(5)
                        game.TweenService:Create(vu152, TweenInfo.new(10), {
                            Volume = 0,
                            Pitch = 0
                        }):Play()
                        if getgenv().death == false then
                            getgenv().Title = "Last Chance To Look Away"
                            getgenv().Description = "Why are you running?"
                            getgenv().Reason = "Survive the rare Entity called Dear God"
                            getgenv().BadgeId = 2129311966
                            getgenv().Category = 10
                            local v158 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                            debug.getupvalue(v158, 1)
                            local v159, v160, v161 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                            while true do
                                local v162
                                v161, v162 = v159(v160, v161)
                                if v161 == nil then
                                    break
                                end
                                v162.Title = getgenv().Title
                                v162.Desc = getgenv().Description
                                v162.Reason = getgenv().Reason
                                v162.BadgeId = getgenv().BadgeId
                                v162.Category = getgenv().Category
                            end
                            v158(nil, "Join")
                        end
                    end
                    function v151.Debug.OnEntityStartMoving(_)
                    end
                    function v151.Debug.OnEntityFinishedRebound(_)
                    end
                    function v151.Debug.OnDeath()
                        getgenv().death = true
                    end
                    v150.runEntity(v151)
                end
                vu163()
            end
            vu163()
        end)





        
        local function vu229()
            task.spawn(function()
                local v164 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                local v165 = v164.createEntity
                local v166 = {
                    Model = "12263106166",
                    Speed = 350,
                    DelayTime = 3,
                    HeightOffset = 0.5,
                    CanKill = false,
                    FlickerLights = {
                        false,
                        4
                    },
                    Cycles = {
                        Min = 4,
                        Max = 4,
                        WaitTime = 0.05
                    },
                    CamShake = {
                        true,
                        {
                            30,
                            30,
                            0.1,
                            1
                        },
                        50
                    }
                }
                local v167 = {}
                local v168 = {
                    Image1 = "rbxassetid://11394048190",
                    Image2 = "rbxassetid://11395251069",
                    Shake = true,
                    Sound1 = {
                        10483790459,
                        {
                            Volume = 0.5
                        }
                    },
                    Sound2 = {
                        10483837590,
                        {
                            Volume = 0.5
                        }
                    },
                    Flashing = {
                        true,
                        Color3.fromRGB(255, 0, 0)
                    },
                    Tease = {
                        Min = 1,
                        Max = 3,
                        true
                    }
                }
                __set_list(v167, 1, {
                    false,
                    v168
                })
                v166.Jumpscare = v167
                v166.CustomDialog = {
                    "You died to an enitity designated as A-60",
                    "It can Appear at any moment, a loud scream will anounce its presence",
                    "When you hear it spawn you must stay out of its reach as soon as possible",
                    "It knows exactly where you are so hiding in different places will not work.."
                }
                local vu169 = v165(v166)
                local vu170 = true
                function vu169.Debug.OnEntitySpawned()
                    print("hi")
                    local function vu197()
                        print("killering")
                        local vu171 = Instance.new("ScreenGui")
                        local vu172 = Instance.new("ImageLabel")
                        local v173 = Instance.new("ImageLabel")
                        vu171.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                        vu171.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        vu172.Name = "JumpscareEnd"
                        vu172.Parent = vu171
                        vu172.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        vu172.BackgroundTransparency = 1
                        vu172.Position = UDim2.new(0.468161434, 0, 0.455128193, 0)
                        vu172.Size = UDim2.new(0.0636771321, 0, 0.0884615406, 0)
                        vu172.Image = "rbxassetid://0"
                        vu172.ImageColor3 = Color3.fromRGB(255, 0, 4)
                        v173.Name = "Full"
                        v173.Parent = vu171
                        v173.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        v173.BackgroundTransparency = 1
                        v173.Position = UDim2.new(- 0.0609865487, 0, - 0.224358946, 0)
                        v173.Size = UDim2.new(1.12197304, 0, 1.44743586, 0)
                        v173.Image = "http://www.roblox.com/asset/?id=11151804223"
                        v173.ImageTransparency = 1
                        local function v195()
                            local v174 = Instance.new("LocalScript", vu171).Parent
                            local v175 = game.Players.LocalPlayer.Character
                            v175:FindFirstChildOfClass("Humanoid")
                            v175:FindFirstChild("HumanoidRootPart")
                            local v176 = workspace:FindFirstChild("A-60")
                            local vu177 = workspace.CurrentCamera
                            local v178 = require(game.ReplicatedStorage.CameraShaker)
                            game:GetService("ReplicatedStorage")
                            local v180 = v178.new(Enum.RenderPriority.Camera.Value, function(p179)
                                vu177.CFrame = vu177.CFrame * p179
                            end)
                            v180:Start()
                            local vu181 = v176:FindFirstChild("RushNew"):Clone()
                            vu181.Parent = vu177;
                            (function(pu182)
                                spawn(function()
                                    while game["Run Service"].Heartbeat:Wait() do
                                        local v183 = pu182.IMAGEIDS:GetChildren()
                                        local v184 = v183[math.random(1, # v183)]
                                        pu182.Main.Face.Texture = v184.Image
                                        wait(Random.new():NextNumber(0, 0.02))
                                    end
                                end)
                            end)(vu181)
                            vu181.Name = "A-60_SCARE"
                            local v185, v186, v187 = pairs(vu181:GetDescendants())
                            local vu188 = vu177
                            local vu189 = true
                            while true do
                                local v190
                                v187, v190 = v185(v186, v187)
                                if v187 == nil then
                                    break
                                end
                                if v190:IsA("Sound") then
                                    v190:Destroy()
                                end
                            end
                            local vu191 = Vector3.new(0, - 1.2, - 5)
                            local vu192 = 0.8
                            local v193 = vu19:Clone()
                            v193.Parent = workspace
                            v193.Volume = 6
                            v193:Play()
                            v180:ShakeOnce(25, 25, 0, 4, 90, 60)
                            local v194 = Instance.new("ColorCorrectionEffect", game.Lighting)
                            game.TweenService:Create(v194, TweenInfo.new(0.5), {
                                Brightness = 0.2,
                                Contrast = 0.2,
                                Saturation = - 0.2,
                                TintColor = Color3.fromRGB(255, 0, 4)
                            }):Play()
                            spawn(function()
                                while vu189 do
                                    game["Run Service"].RenderStepped:Wait()
                                    vu181.CFrame = vu181.CFrame:Lerp(vu188.CFrame * CFrame.new(vu191), vu192)
                                end
                                game.TweenService:Create(vu181, TweenInfo.new(1), {
                                    CFrame = vu188.CFrame * CFrame.new(Vector3.new(0, - 1.2, 45))
                                }):Play()
                            end)
                            wait(0.5)
                            local _ = false
                            v174.JumpscareEnd.Image = vu181:FindFirstChild("Main"):FindFirstChild("Face").Texture
                            game.TweenService:Create(v174.JumpscareEnd, TweenInfo.new(0.5), {
                                Size = v174.Full.Size,
                                Position = v174.Full.Position,
                                Rotation = math.random(- 20, 20)
                            }):Play()
                            game.TweenService:Create(v194, TweenInfo.new(10), {
                                Brightness = 0,
                                Contrast = 0,
                                Saturation = 0,
                                TintColor = Color3.fromRGB(255, 255, 255)
                            }):Play()
                            v175:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                            DEATHMESSAGE({
                                "You died to an enitity designated as A-60",
                                "It can Apear at any moment, a loud scream will anounce its presence",
                                "When you hear it spawn you must stay out of its reach as soon as possible",
                                "It knows exactly where you are so hiding in different places will not work.."
                            }, "A-60")
                            wait(0.5)
                            game.TweenService:Create(v174.JumpscareEnd, TweenInfo.new(0.5), {
                                ImageTransparency = 1
                            }):Play()
                            game.Debris:AddItem(vu181, 1)
                        end
                        coroutine.wrap(v195)()
                        local function v196()
                            Instance.new("Script", vu172)
                            while true do
                                wait()
                            end
                        end
                        coroutine.wrap(v196)()
                    end
                    local vu198 = workspace:FindFirstChild("A-60"):FindFirstChild("RushNew")
                    print(vu198.Name)
                    local vu199 = false
                    local function vu211(p200, p201)
                        if vu199 ~= true then
                            local v202 = vu198.Position
                            local v203 = (p200.HumanoidRootPart.Position - vu198.Position).unit * p201
                            local v204 = Ray.new(v202, v203)
                            local v205, _ = workspace:FindPartOnRay(v204, vu198)
                            if v205 then
                                if v205:IsDescendantOf(p200) then
                                    print("DIE")
                                    vu199 = true
                                    if not workspace:FindFirstChild("SeekMovingNewClone") then
                                        local v206 = vu198
                                        local v207, v208, v209 = pairs(v206:GetDescendants())
                                        while true do
                                            local v210
                                            v209, v210 = v207(v208, v209)
                                            if v209 == nil then
                                                break
                                            end
                                            if v210:IsA("Sound") then
                                                v210:Destroy()
                                            end
                                        end
                                        spawn(function()
                                            vu197()
                                        end)
                                        return true
                                    end
                                end
                            else
                                return false
                            end
                        else
                            return
                        end
                    end
                    spawn(function()
                        while vu169 ~= nil do
                            wait(0.5)
                            local v212 = game.Players.LocalPlayer
                            if v212.Character ~= nil and (not v212.Character:GetAttribute("Hiding") and vu211(v212.Character, 50) == true) then
                                print("cansee")
                            end
                        end
                    end)
                    spawn(function()
                        local v213 = workspace:FindFirstChild("A-60"):FindFirstChild("RushNew")
                        v213.Static:Play()
                        v213.Static.Pitch = 1.6
                        while game["Run Service"].Heartbeat:Wait() and vu170 do
                            local v214 = v213.IMAGEIDS:GetChildren()
                            local v215 = v214[math.random(1, # v214)]
                            v213.Main.Face.Texture = v215.Image
                            wait(Random.new():NextNumber(0, 0.07))
                        end
                    end)
                end
                local vu216 = nil
                function vu169.Debug.OnEntityDespawned(_)
                    vu170 = false
                    local vu217 = Instance.new("Sound")
                    vu217.Volume = 1
                    vu217.Pitch = 0.1
                    vu217.SoundId = "rbxassetid://7757472223"
                    vu217.Parent = workspace
                    vu217.Volume = 10
                    local v218 = vu217
                    vu217.Play(v218)
                    vu216 = vu217
                    game.Debris:AddItem(vu217, 25)
                    spawn(function()
                        while vu217.Playing do
                            wait(0.5)
                            if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health == 0 then
                                vu217:Destroy()
                            end
                        end
                    end)
                    local v219 = Instance.new("ColorCorrectionEffect", game.Lighting)
                    game.Debris:AddItem(v219, 24)
                    v219.Name = "Despawn"
                    v219.TintColor = Color3.fromRGB(255, 0, 4)
                    v219.Saturation = - 0.7
                    v219.Contrast = 0.2
                    game.TweenService:Create(v219, TweenInfo.new(15), {
                        TintColor = Color3.fromRGB(255, 255, 255),
                        Saturation = 0,
                        Contrast = 0
                    }):Play()
                    game.Debris:AddItem(v219, 40)
                    game.TweenService:Create(vu217, TweenInfo.new(23), {
                        Volume = 0
                    }):Play()
                    local v220 = require(game.ReplicatedStorage.CameraShaker)
                    local vu221 = workspace.CurrentCamera
                    local v223 = v220.new(Enum.RenderPriority.Camera.Value, function(p222)
                        vu221.CFrame = vu221.CFrame * p222
                    end)
                    v223:Start()
                    v223:ShakeOnce(5, 45, 0.1, 20, 2, 20)
                    if getgenv().death == true then
                        getgenv().Title = "A nostalgic fright..."
                        getgenv().Description = "Might Come back..."
                        getgenv().Reason = "Encounter and survive the rare Entity called A-60"
                        getgenv().BadgeId = 2129311962
                        getgenv().Category = 10
                        local v224 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                        debug.getupvalue(v224, 1)
                        local v225, v226, v227 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                        while true do
                            local v228
                            v227, v228 = v225(v226, v227)
                            if v227 == nil then
                                break
                            end
                            v228.Title = getgenv().Title
                            v228.Desc = getgenv().Description
                            v228.Reason = getgenv().Reason
                            v228.BadgeId = getgenv().BadgeId
                            v228.Category = getgenv().Category
                        end
                        v224(nil, "Join")
                    end
                end
                function vu169.Debug.OnEntityStartMoving(_)
                end
                v164.runEntity(vu169)
            end)
        end
        spawn(function()
            local function vu293()
                getgenv().death = false
                while wait(600) do
                    if workspace:FindFirstChild("SeekMovingNewClone") then
                        vu293()
                        return
                    end
                    local v230 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                    local v231 = v230.createEntity
                    local v232 = {
                        Model = "12263106166",
                        Speed = 350,
                        DelayTime = 3,
                        HeightOffset = 0.5,
                        CanKill = false,
                        FlickerLights = {
                            false,
                            4
                        },
                        Cycles = {
                            Min = 4,
                            Max = 4,
                            WaitTime = 0.05
                        },
                        CamShake = {
                            true,
                            {
                                30,
                                30,
                                0.1,
                                1
                            },
                            50
                        },
                        Jumpscare = {
                            false,
                            {
                                Image1 = "rbxassetid://11394048190",
                                Image2 = "rbxassetid://11395251069",
                                Shake = true,
                                Sound1 = {
                                    10483790459,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Sound2 = {
                                    10483837590,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Flashing = {
                                    true,
                                    Color3.fromRGB(255, 0, 0)
                                },
                                Tease = {
                                    Min = 1,
                                    Max = 3,
                                    true
                                }
                            }
                        },
                        CustomDialog = {
                            "You died to an enitity designated as A-60",
                            "It can Appear at any moment, a loud scream will anounce its presence",
                            "When you hear it spawn you must stay out of its reach as soon as possible",
                            "It knows exactly where you are so hiding in different places will not work.."
                        }
                    }
                    local vu233 = v231(v232)
                    local vu234 = true
                    function vu233.Debug.OnEntitySpawned()
                        print("hi")
                        local function vu261()
                            print("killering")
                            local vu235 = Instance.new("ScreenGui")
                            local vu236 = Instance.new("ImageLabel")
                            local v237 = Instance.new("ImageLabel")
                            vu235.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                            vu235.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            vu236.Name = "JumpscareEnd"
                            vu236.Parent = vu235
                            vu236.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            vu236.BackgroundTransparency = 1
                            vu236.Position = UDim2.new(0.468161434, 0, 0.455128193, 0)
                            vu236.Size = UDim2.new(0.0636771321, 0, 0.0884615406, 0)
                            vu236.Image = "rbxassetid://0"
                            vu236.ImageColor3 = Color3.fromRGB(255, 0, 4)
                            v237.Name = "Full"
                            v237.Parent = vu235
                            v237.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            v237.BackgroundTransparency = 1
                            v237.Position = UDim2.new(- 0.0609865487, 0, - 0.224358946, 0)
                            v237.Size = UDim2.new(1.12197304, 0, 1.44743586, 0)
                            v237.Image = "http://www.roblox.com/asset/?id=11151804223"
                            v237.ImageTransparency = 1
                            local function v259()
                                local v238 = Instance.new("LocalScript", vu235).Parent
                                local v239 = game.Players.LocalPlayer.Character
                                v239:FindFirstChildOfClass("Humanoid")
                                v239:FindFirstChild("HumanoidRootPart")
                                local v240 = workspace:FindFirstChild("A-60")
                                local vu241 = workspace.CurrentCamera
                                local v242 = require(game.ReplicatedStorage.CameraShaker)
                                game:GetService("ReplicatedStorage")
                                local v244 = v242.new(Enum.RenderPriority.Camera.Value, function(p243)
                                    vu241.CFrame = vu241.CFrame * p243
                                end)
                                v244:Start()
                                local vu245 = v240:FindFirstChild("RushNew"):Clone()
                                vu245.Parent = vu241;
                                (function(pu246)
                                    spawn(function()
                                        while game["Run Service"].Heartbeat:Wait() do
                                            local v247 = pu246.IMAGEIDS:GetChildren()
                                            local v248 = v247[math.random(1, # v247)]
                                            pu246.Main.Face.Texture = v248.Image
                                            wait(Random.new():NextNumber(0, 0.02))
                                        end
                                    end)
                                end)(vu245)
                                vu245.Name = "A-60_SCARE"
                                local v249, v250, v251 = pairs(vu245:GetDescendants())
                                local vu252 = vu241
                                local vu253 = true
                                while true do
                                    local v254
                                    v251, v254 = v249(v250, v251)
                                    if v251 == nil then
                                        break
                                    end
                                    if v254:IsA("Sound") then
                                        v254:Destroy()
                                    end
                                end
                                local vu255 = Vector3.new(0, - 1.2, - 5)
                                local vu256 = 0.8
                                local v257 = vu19:Clone()
                                v257.Parent = workspace
                                v257.Volume = 6
                                v257:Play()
                                v244:ShakeOnce(25, 25, 0, 4, 90, 60)
                                local v258 = Instance.new("ColorCorrectionEffect", game.Lighting)
                                game.TweenService:Create(v258, TweenInfo.new(0.5), {
                                    Brightness = 0.2,
                                    Contrast = 0.2,
                                    Saturation = - 0.2,
                                    TintColor = Color3.fromRGB(255, 0, 4)
                                }):Play()
                                spawn(function()
                                    while vu253 do
                                        game["Run Service"].RenderStepped:Wait()
                                        vu245.CFrame = vu245.CFrame:Lerp(vu252.CFrame * CFrame.new(vu255), vu256)
                                    end
                                    game.TweenService:Create(vu245, TweenInfo.new(1), {
                                        CFrame = vu252.CFrame * CFrame.new(Vector3.new(0, - 1.2, 45))
                                    }):Play()
                                end)
                                wait(0.5)
                                local _ = false
                                v238.JumpscareEnd.Image = vu245:FindFirstChild("Main"):FindFirstChild("Face").Texture
                                game.TweenService:Create(v238.JumpscareEnd, TweenInfo.new(0.5), {
                                    Size = v238.Full.Size,
                                    Position = v238.Full.Position,
                                    Rotation = math.random(- 20, 20)
                                }):Play()
                                game.TweenService:Create(v258, TweenInfo.new(10), {
                                    Brightness = 0,
                                    Contrast = 0,
                                    Saturation = 0,
                                    TintColor = Color3.fromRGB(255, 255, 255)
                                }):Play()
                                v239:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                                DEATHMESSAGE({
                                    "You died to an enitity designated as A-60",
                                    "It can Apear at any moment, a loud scream will anounce its presence",
                                    "When you hear it spawn you must stay out of its reach as soon as possible",
                                    "It knows exactly where you are so hiding in different places will not work.."
                                }, "A-60")
                                wait(0.5)
                                game.TweenService:Create(v238.JumpscareEnd, TweenInfo.new(0.5), {
                                    ImageTransparency = 1
                                }):Play()
                                game.Debris:AddItem(vu245, 1)
                            end
                            coroutine.wrap(v259)()
                            local function v260()
                                Instance.new("Script", vu236)
                                while true do
                                    wait()
                                end
                            end
                            coroutine.wrap(v260)()
                        end
                        local vu262 = workspace:FindFirstChild("A-60"):FindFirstChild("RushNew")
                        print(vu262.Name)
                        local vu263 = false
                        local function vu275(p264, p265)
                            if vu263 ~= true then
                                local v266 = vu262.Position
                                local v267 = (p264.HumanoidRootPart.Position - vu262.Position).unit * p265
                                local v268 = Ray.new(v266, v267)
                                local v269, _ = workspace:FindPartOnRay(v268, vu262)
                                if v269 then
                                    if v269:IsDescendantOf(p264) then
                                        print("DIE")
                                        vu263 = true
                                        if not workspace:FindFirstChild("SeekMovingNewClone") then
                                            local v270 = vu262
                                            local v271, v272, v273 = pairs(v270:GetDescendants())
                                            while true do
                                                local v274
                                                v273, v274 = v271(v272, v273)
                                                if v273 == nil then
                                                    break
                                                end
                                                if v274:IsA("Sound") then
                                                    v274:Destroy()
                                                end
                                            end
                                            spawn(function()
                                                vu261()
                                            end)
                                            return true
                                        end
                                    end
                                else
                                    return false
                                end
                            else
                                return
                            end
                        end
                        spawn(function()
                            while vu233 ~= nil do
                                wait(0.5)
                                local v276 = game.Players.LocalPlayer
                                if v276.Character ~= nil and (not v276.Character:GetAttribute("Hiding") and vu275(v276.Character, 50) == true) then
                                    print("cansee")
                                end
                            end
                        end)
                        spawn(function()
                            local v277 = workspace:FindFirstChild("A-60"):FindFirstChild("RushNew")
                            v277.Static:Play()
                            v277.Static.Pitch = 1.6
                            while game["Run Service"].Heartbeat:Wait() and vu234 do
                                local v278 = v277.IMAGEIDS:GetChildren()
                                local v279 = v278[math.random(1, # v278)]
                                v277.Main.Face.Texture = v279.Image
                                wait(Random.new():NextNumber(0, 0.07))
                            end
                        end)
                    end
                    local vu280 = nil
                    function vu233.Debug.OnEntityDespawned(_)
                        vu234 = false
                        local vu281 = Instance.new("Sound")
                        vu281.Volume = 1
                        vu281.Pitch = 0.1
                        vu281.SoundId = "rbxassetid://7757472223"
                        vu281.Parent = workspace
                        vu281.Volume = 10
                        local v282 = vu281
                        vu281.Play(v282)
                        vu280 = vu281
                        game.Debris:AddItem(vu281, 25)
                        spawn(function()
                            while vu281.Playing do
                                wait(0.5)
                                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Health == 0 then
                                    vu281:Destroy()
                                end
                            end
                        end)
                        local v283 = Instance.new("ColorCorrectionEffect", game.Lighting)
                        game.Debris:AddItem(v283, 24)
                        v283.Name = "Despawn"
                        v283.TintColor = Color3.fromRGB(255, 0, 4)
                        v283.Saturation = - 0.7
                        v283.Contrast = 0.2
                        game.TweenService:Create(v283, TweenInfo.new(15), {
                            TintColor = Color3.fromRGB(255, 255, 255),
                            Saturation = 0,
                            Contrast = 0
                        }):Play()
                        game.Debris:AddItem(v283, 40)
                        game.TweenService:Create(vu281, TweenInfo.new(23), {
                            Volume = 0
                        }):Play()
                        local v284 = require(game.ReplicatedStorage.CameraShaker)
                        local vu285 = workspace.CurrentCamera
                        local v287 = v284.new(Enum.RenderPriority.Camera.Value, function(p286)
                            vu285.CFrame = vu285.CFrame * p286
                        end)
                        v287:Start()
                        v287:ShakeOnce(5, 45, 0.1, 20, 2, 20)
                        if getgenv().death == true then
                            getgenv().Title = "A nostalgic fright..."
                            getgenv().Description = "Might Come back..."
                            getgenv().Reason = "Encounter and survive the rare Entity called A-60"
                            getgenv().BadgeId = 2129311962
                            getgenv().Category = 10
                            local v288 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                            debug.getupvalue(v288, 1)
                            local v289, v290, v291 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                            while true do
                                local v292
                                v291, v292 = v289(v290, v291)
                                if v291 == nil then
                                    break
                                end
                                v292.Title = getgenv().Title
                                v292.Desc = getgenv().Description
                                v292.Reason = getgenv().Reason
                                v292.BadgeId = getgenv().BadgeId
                                v292.Category = getgenv().Category
                            end
                            v288(nil, "Join")
                        end
                    end
                    function vu233.Debug.OnEntityStartMoving(_)
                    end
                    v230.runEntity(vu233)
                end
            end
            vu293()
        end)
        local vu294 = false
        spawn(function()
            while wait(335) do
                local function vu348()
                    if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                        vu348()
                    else
                        game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
                        local vu295 = false
                        game:GetService("ReplicatedStorage")
                        local _ = game.Players.LocalPlayer
                        local vu296 = 80
                        require(game.ReplicatedStorage.ClientModules.Module_Events)
                        local v297 = require(game.ReplicatedStorage.CameraShaker)
                        local vu298 = workspace.CurrentCamera
                        local vu300 = v297.new(Enum.RenderPriority.Camera.Value, function(p299)
                            vu298.CFrame = vu298.CFrame * p299
                        end)
                        local v301 = vu300
                        vu300.Start(v301)
                        function GetTime(p302, p303)
                            return p302 / p303
                        end
                        function GetLastRoom()
                            local _ = workspace.CurrentRooms
                            return game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value + 1]
                        end
                        local vu304 = 99999
                        local function vu338()
                            local v305 = 2
                            local v306 = 2
                            local v307 = Vector3.new(0, 0.6, 0)
                            local v308 = vu7:Clone()
                            v308.Parent = workspace
                            local vu309 = v308.Rebound
                            vu309.CanCollide = false
                            task.wait(4)
                            if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                                vu348()
                                return
                            end
                            local v310 = workspace.CurrentRooms
                            local vu311 = vu20:Clone()
                            vu311.Parent = vu309
                            local v312 = vu311
                            vu311.Play(v312)
                            vu311.Volume = 9
                            vu309.CFrame = GetLastRoom().RoomExit.CFrame
                            wait(math.random(1, 1))
                            local function vu319(p313, p314)
                                if vu295 ~= true then
                                    if not (workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50")) then
                                        local v315 = vu309.Position
                                        local v316 = (p313.HumanoidRootPart.Position - vu309.Position).unit * p314
                                        local v317 = Ray.new(v315, v316)
                                        local v318, _ = workspace:FindPartOnRay(v317, vu309)
                                        if not v318 then
                                            return false
                                        end
                                        if v318:IsDescendantOf(p313) then
                                            vu295 = true
                                            return true
                                        end
                                    end
                                else
                                    return
                                end
                            end
                            spawn(function()
                                while vu309 ~= nil do
                                    wait(0.5)
                                    local v320 = game.Players.LocalPlayer
                                    local _ = script.Parent
                                    if v320.Character ~= nil and (not v320.Character:GetAttribute("Hiding") and vu319(v320.Character, 50)) then
                                        if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                                            return
                                        end
                                        vu311:Stop()
                                        local vu321 = Instance.new("ScreenGui")
                                        local vu322 = Instance.new("ImageLabel")
                                        local v323 = Instance.new("ImageLabel")
                                        local v324 = Instance.new("ImageLabel")
                                        vu321.Name = "ReboundJs"
                                        vu321.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                                        vu322.Name = "Static"
                                        vu322.Parent = vu321
                                        vu322.BackgroundColor3 = Color3.fromRGB(0, 63, 139)
                                        vu322.BackgroundTransparency = 1
                                        vu322.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                        vu322.BorderSizePixel = 0
                                        vu322.Size = UDim2.new(1, 0, 1, 0)
                                        vu322.Image = "rbxassetid://236543215"
                                        vu322.ImageColor3 = Color3.fromRGB(0, 255, 255)
                                        vu322.ImageTransparency = 1
                                        v323.Name = "Rebound"
                                        v323.Parent = vu321
                                        v323.BackgroundColor3 = Color3.fromRGB(0, 63, 139)
                                        v323.BackgroundTransparency = 1
                                        v323.BorderSizePixel = 0
                                        v323.Position = UDim2.new(0.486631036, 0, 0.479363143, 0)
                                        v323.Size = UDim2.new(0.0267379656, 0, 0.0387096703, 0)
                                        v323.Image = "rbxassetid://10914800940"
                                        v324.Name = "JSSIZE"
                                        v324.Parent = vu321
                                        v324.BackgroundColor3 = Color3.fromRGB(0, 63, 139)
                                        v324.BackgroundTransparency = 1
                                        v324.BorderSizePixel = 0
                                        v324.Position = UDim2.new(- 0.586452842, 0, - 1.25140607, 0)
                                        v324.Size = UDim2.new(2.12834215, 0, 3.08128953, 0)
                                        v324.Visible = false
                                        v324.Image = "rbxassetid://10914800940"
                                        local function v326()
                                            local v325 = Instance.new("LocalScript", vu322)
                                            while true do
                                                v325.Parent.Image = "rbxassetid://236543215"
                                                wait(0.002)
                                                v325.Parent.Rotation = 0
                                                wait(0.002)
                                                v325.Parent.Rotation = 180
                                                wait(0.002)
                                                v325.Parent.Image = "rbxassetid://236777652"
                                                wait(0.002)
                                                v325.Parent.Rotation = 0
                                                wait(0.002)
                                                v325.Parent.Rotation = 180
                                                wait(0.002)
                                            end
                                        end
                                        coroutine.wrap(v326)()
                                        local function v334()
                                            local v327 = Instance.new("LocalScript", vu321)
                                            local vu328 = game.ReplicatedStorage
                                            local vu329 = game.Players.LocalPlayer
                                            local vu330 = v327.Parent
                                            local vu331 = vu330.Static
                                            local vu332 = vu330.JSSIZE
                                            local vu333 = vu21:Clone()
                                            vu333.Parent = workspace
                                            vu333.Volume = 2;
                                            (function()
                                                game.TweenService:Create(vu331, TweenInfo.new(0.5), {
                                                    BackgroundTransparency = 0,
                                                    ImageTransparency = 0.8
                                                }):Play()
                                                game.TweenService:Create(vu330.Rebound, TweenInfo.new(0.5), {
                                                    Size = vu332.Size,
                                                    Position = vu332.Position
                                                }):Play()
                                                vu333:Play()
                                                spawn(function()
                                                    wait(0.3)
                                                    vu329.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                                                    vu328.GameStats["Player_" .. vu329.Name].Total.DeathCause.Value = "Rebound"
                                                    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                                                        "You died to who you call Rebound...",
                                                        "He makes his presence known and keeps coming back...",
                                                        "Hide when this happens!"
                                                    }, "Blue")
                                                end)
                                                wait(0.5)
                                                game.TweenService:Create(vu331, TweenInfo.new(1), {
                                                    BackgroundTransparency = 1,
                                                    ImageTransparency = 1
                                                }):Play()
                                                game.TweenService:Create(vu330.Rebound, TweenInfo.new(0.3), {
                                                    ImageTransparency = 1
                                                }):Play()
                                                wait(1)
                                                vu333:Destroy()
                                                vu330:Destroy()
                                            end)()
                                        end
                                        coroutine.wrap(v334)()
                                    end
                                    if v320.Character ~= nil and (v320.Character:FindFirstChild("HumanoidRootPart") and (vu309.Position - v320.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <= vu296) then
                                        vu300:ShakeOnce(9, 8, 0.1, 2, 1, 6)
                                    end
                                end
                            end)
                            for v335 = game.ReplicatedStorage.GameData.LatestRoom.Value + 1, 0, - 1 do
                                if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                                    break
                                end
                                if v310:FindFirstChild(v335) then
                                    print("room " .. v335)
                                    local v336 = v310[v335]
                                    if v336:FindFirstChild("Nodes") then
                                        local v337 = v336:FindFirstChild("RoomEntrance")
                                        if v336:FindFirstChild("RoomExit") then
                                            game.TweenService:Create(vu309, TweenInfo.new(v305), {
                                                CFrame = v337.CFrame + v307
                                            }):Play()
                                            wait(v306)
                                        end
                                    end
                                end
                                print("looping")
                            end
                            vu309.Anchored = false
                            vu309.CanCollide = false
                        end
                        local function v347()
                            local v339 = vu22:Clone()
                            v339.Parent = workspace
                            v339.Volume = 7
                            v339:Play()
                            local v340 = Instance.new("ColorCorrectionEffect", game.Lighting)
                            game.Debris:AddItem(v340, 24)
                            v340.Name = "Warn"
                            v340.TintColor = Color3.fromRGB(65, 138, 255)
                            v340.Saturation = - 0.7
                            v340.Contrast = 0.2
                            game.TweenService:Create(v340, TweenInfo.new(15), {
                                TintColor = Color3.fromRGB(255, 255, 255),
                                Saturation = 0,
                                Contrast = 0
                            }):Play()
                            vu300:ShakeOnce(10, 3, 0.1, 6, 2, 0.5)
                            vu338()
                            local v341 = 3
                            while wait() and v341 ~= 0 and not (workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50")) do
                                game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                                v341 = v341 - 1
                                wait(2)
                                vu338()
                            end
                            if vu294 == false then
                                vu294 = true
                                getgenv().Title = "Out Of Many Rebounds"
                                getgenv().Description = "Back for more!"
                                getgenv().Reason = "Encounter Rebound."
                                getgenv().BadgeId = 2129254734
                                getgenv().Category = 10
                                local v342 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                                debug.getupvalue(v342, 1)
                                local v343, v344, v345 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                                while true do
                                    local v346
                                    v345, v346 = v343(v344, v345)
                                    if v345 == nil then
                                        break
                                    end
                                    v346.Title = getgenv().Title
                                    v346.Desc = getgenv().Description
                                    v346.Reason = getgenv().Reason
                                    v346.BadgeId = getgenv().BadgeId
                                    v346.Category = getgenv().Category
                                end
                                v342(nil, "Join")
                            end
                        end
                        pcall(v347)
                    end
                end
                vu348()
            end
        end)
        spawn(function()
            local vu349 = false;
            (function()
                while wait(179) do
                    game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
                    if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                        return
                    end
                    local vu350 = false
                    local _ = game.Players.LocalPlayer
                    local _ = game.ReplicatedStorage
                    local vu351 = 80
                    require(game.ReplicatedStorage.ClientModules.Module_Events)
                    local vu352 = require(game.ReplicatedStorage.CameraShaker)
                    local vu353 = workspace.CurrentCamera
                    local vu355 = vu352.new(Enum.RenderPriority.Camera.Value, function(p354)
                        vu353.CFrame = vu353.CFrame * p354
                    end)
                    local v356 = vu355
                    vu355.Start(v356)
                    function GetTime(p357, p358)
                        return p357 / p358
                    end
                    local vu359 = 99999
                    local function v419()
                        local v360 = Vector3.new(0, 5, 0)
                        local v361 = TweenInfo.new(3)
                        local v362 = {
                            Color = Color3.new(1, 0, 0.133333)
                        }
                        vu355:Shake(vu352.Presets.Earthquake)
                        local v363, v364, v365 = pairs(game.Workspace.CurrentRooms:GetDescendants())
                        local vu366 = false
                        local v367 = 100
                        while true do
                            local v368, v369 = v363(v364, v365)
                            if v368 == nil then
                                break
                            end
                            v365 = v368
                            if v369:IsA("Light") then
                                game.TweenService:Create(v369, v361, v362):Play()
                                if v369.Parent.Name == "LightFixture" then
                                    game.TweenService:Create(v369.Parent, v361, v362):Play()
                                end
                            end
                        end
                        local v370 = vu6:Clone()
                        v370.Parent = workspace
                        local vu371 = v370.Ripe
                        vu371.Ambush.Volume = 0
                        local v372 = vu371.Spawn:Clone()
                        v372.Parent = workspace
                        v372.TimePosition = 0
                        v372:Play()
                        v372.Volume = 6
                        local function vu379(p373, p374)
                            if vu350 ~= true then
                                if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                                    return false
                                end
                                local v375 = vu371.Position
                                local v376 = (p373.HumanoidRootPart.Position - vu371.Position).unit * p374
                                local v377 = Ray.new(v375, v376)
                                local v378, _ = workspace:FindPartOnRay(v377, vu371)
                                if not v378 then
                                    return false
                                end
                                if v378:IsDescendantOf(p373) then
                                    vu350 = true
                                    return true
                                end
                            end
                        end
                        spawn(function()
                            while vu371 ~= nil do
                                wait(0.2)
                                local vu380 = game.Players.LocalPlayer
                                local _ = script.Parent
                                if vu380.Character ~= nil and (not vu380.Character:GetAttribute("Hiding") and vu379(vu380.Character, 50)) then
                                    vu366 = true
                                    local vu381 = Instance.new("ScreenGui")
                                    local v382 = Instance.new("ImageLabel")
                                    vu381.Name = "Noise"
                                    vu381.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                                    vu381.IgnoreGuiInset = true
                                    v382.Parent = vu381
                                    v382.BackgroundTransparency = 1
                                    v382.Size = UDim2.new(1, 0, 1, 0)
                                    v382.Image = "rbxassetid://236542974"
                                    v382.ImageTransparency = 1
                                    local function v398()
                                        local vu383 = Instance.new("LocalScript", vu381)
                                        local v384 = game.Players.LocalPlayer.Character
                                        local v385 = workspace.Death.Ripe
                                        local v386 = v385:Clone()
                                        v386.Parent = workspace
                                        v386.Position = v385.Position
                                        v386.ripe.ParticleEmitter.Texture = "rbxassetid://11816152645"
                                        local v387, v388, v389 = pairs(v386:GetDescendants())
                                        while true do
                                            local v390, vu391 = v387(v388, v389)
                                            if v390 == nil then
                                                break
                                            end
                                            v389 = v390
                                            if vu391:IsA("ParticleEmitter") then
                                                spawn(function()
                                                    vu391.Rate = 9999
                                                    wait(0.25)
                                                    vu391.TimeScale = 0
                                                end)
                                            elseif vu391:IsA("Sound") then
                                                vu391.Volume = 0
                                            end
                                        end
                                        v385:Destroy()
                                        local v392 = Instance.new("Sound", workspace)
                                        v392.SoundId = "rbxassetid://372770465"
                                        v392.Volume = 10
                                        v392.Pitch = 0.7
                                        local v393 = vu23:Clone()
                                        v393.Parent = workspace
                                        v393.Volume = 3
                                        v393.Pitch = 1
                                        local vu394 = Instance.new("Part", workspace)
                                        vu394.Transparency = 1
                                        vu394.CanCollide = false
                                        vu394.CanTouch = false
                                        vu394.Anchored = true
                                        vu394.Name = "pants pooper"
                                        v384:FindFirstChild("HumanoidRootPart").Anchored = true
                                        vu394.CFrame = workspace.Camera.CFrame
                                        v393:Play()
                                        workspace.Camera.CameraType = Enum.CameraType.Scriptable
                                        local vu395 = true
                                        local vu396 = {
                                            8482795900,
                                            236542974,
                                            184251462,
                                            236777652
                                        }
                                        spawn(function()
                                            while game["Run Service"].RenderStepped:Wait() and vu395 do
                                                workspace.Camera.CFrame = vu394.CFrame
                                                vu383.Parent.ImageLabel.Image = "rbxassetid://" .. vu396[math.random(1, # vu396)]
                                            end
                                        end)
                                        local v397 = game.TweenService:Create(vu394, TweenInfo.new(0.3, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
                                            CFrame = CFrame.lookAt(vu394.Position, v386.Position)
                                        })
                                        v397:Play()
                                        v397.Completed:Wait()
                                        wait(1)
                                        game.TweenService:Create(vu383.Parent.ImageLabel, TweenInfo.new(2), {
                                            ImageTransparency = 0
                                        }):Play()
                                        v392:Play()
                                        v392.Volume = 0
                                        game.TweenService:Create(v392, TweenInfo.new(2), {
                                            Volume = 10
                                        }):Play()
                                        wait(2)
                                        vu395 = false
                                        game.TweenService:Create(vu383.Parent.ImageLabel, TweenInfo.new(1), {
                                            ImageTransparency = 1
                                        }):Play()
                                        game.TweenService:Create(v392, TweenInfo.new(1), {
                                            Volume = 0
                                        }):Play()
                                        v386.Anchored = false
                                        v386.CanCollide = false
                                        v384:FindFirstChild("HumanoidRootPart").Anchored = false
                                        vu380.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                                        DeathHint({
                                            "You died to who you call Ripper...",
                                            "You can tell his presence by the lights and his scream.",
                                            "Hide when he does this!"
                                        }, "Blue")
                                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Ripper"
                                    end
                                    coroutine.wrap(v398)()
                                end
                                if vu380.Character ~= nil and (vu380.Character:FindFirstChild("HumanoidRootPart") and (vu371.Position - vu380.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < vu351) then
                                    vu355:ShakeOnce(15, 25, 0, 2, 1, 6)
                                end
                                if vu366 then
                                    break
                                end
                            end
                        end)
                        game.Debris:AddItem(v372, 10)
                        vu371.Ambush:Stop()
                        local v399 = vu371.Ambush
                        v399.SoundId = "rbxassetid://6963538865"
                        v399.Volume = 10
                        v399.RollOffMinDistance = 5
                        v399.PlaybackSpeed = 0.37
                        v399.TimePosition = 0
                        v399.Volume = 10
                        wait(8)
                        vu371.Ambush:Play()
                        game.TweenService:Create(vu371.Ambush, TweenInfo.new(6), {
                            Volume = 0.8
                        }):Play()
                        local v400 = workspace.CurrentRooms
                        local v401 = vu359
                        for v402 = 1, 100 do
                            local v403, v404
                            if v400:FindFirstChild(v402) then
                                local v405 = v400:FindFirstChild(v402)
                                if v405:FindFirstChild("PathfindNodes") then
                                    local v406 = v405:FindFirstChild("PathfindNodes")
                                    v403 = v402
                                    for v407 = 1, # v406:GetChildren() do
                                        if v406:FindFirstChild(v407) then
                                            local v408 = v406:FindFirstChild(v407)
                                            local v409 = (vu371.Position - v408.Position).Magnitude / v401
                                            local v410 = game.TweenService:Create(vu371, TweenInfo.new(v409, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                                                CFrame = v408.CFrame + v360
                                            })
                                            v410:Play()
                                            v410.Completed:Wait()
                                        end
                                    end
                                else
                                    local v411 = (vu371.Position - v405.RoomExit.Position).Magnitude / v401
                                    local v412 = game.TweenService:Create(vu371, TweenInfo.new(v411, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                                        CFrame = v405.RoomExit.CFrame + v360
                                    })
                                    v412:Play()
                                    v412.Completed:Wait()
                                    v403 = v402
                                end
                                v404 = v367
                            else
                                v404 = v367
                                v367 = v401
                                v403 = v402
                            end
                            if v402 == game.ReplicatedStorage.GameData.LatestRoom.Value then
                                break
                            end
                            v401 = v367
                            v367 = v404
                        end
                        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
                        local v413 = Instance.new("Sound", vu371)
                        v413.Volume = 10
                        v413.SoundId = "rbxassetid://1837829565"
                        v413:Play()
                        vu355:Shake(vu355.Presets.Explosion)
                        wait(1)
                        vu371.Anchored = false
                        vu371.CanCollide = false
                        game.Debris:AddItem(v370, 5)
                        if vu349 == false then
                            vu349 = true
                            getgenv().Title = "Torn Apart"
                            getgenv().Description = "Dont leave to early.."
                            getgenv().Reason = "Encounter Ripper."
                            getgenv().BadgeId = 2129409220
                            getgenv().Category = 10
                            local vu414 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                            debug.getupvalue(vu414, 1)
                            local v415, v416, v417 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                            while true do
                                local v418
                                v417, v418 = v415(v416, v417)
                                if v417 == nil then
                                    break
                                end
                                v418.Title = getgenv().Title
                                v418.Desc = getgenv().Description
                                v418.Reason = getgenv().Reason
                                v418.BadgeId = getgenv().BadgeId
                                v418.Category = getgenv().Category
                            end
                            spawn(function()
                                vu414(nil, "Join")
                            end)
                        end
                    end
                    task.spawn(v419)
                end
            end)()
        end)
        local vu420 = false
        spawn(function()
            while wait(math.random(6, 100)) do
                game:GetService("ReplicatedStorage")
                local vu421 = game.Players.LocalPlayer
                require(game.ReplicatedStorage.ClientModules.Module_Events)
                local v422 = require(game.ReplicatedStorage.CameraShaker)
                local vu423 = workspace.CurrentCamera
                local v425 = v422.new(Enum.RenderPriority.Camera.Value, function(p424)
                    vu423.CFrame = vu423.CFrame * p424
                end)
                v425:Start()
                function GetTime(p426, p427)
                    return p426 / p427
                end
                local v428 = vu10:Clone()
                v428.Parent = workspace
                local vu429 = v428:FindFirstChildWhichIsA("BasePart")
                function IsScreen()
                    local v430 = vu423
                    if select(2, v430:WorldToViewportPoint(vu429.Position)) then
                        return true
                    end
                end
                local vu431 = false
                local v432 = Vector3.new(0, 0, - math.random(5, 20))
                vu429.CFrame = vu421.Character.HumanoidRootPart.CFrame * CFrame.new(v432)
                vu429.PlaySound:Play()
                spawn(function()
                    wait(2)
                    if IsScreen() then
                        vu431 = true
                    end
                end)
                repeat
                    wait()
                until vu431 == true or not IsScreen()
                if vu431 == true then
                    spawn(function()
                        while vu431 do
                            wait()
                            if vu421.Character:FindFirstChildWhichIsA("Humanoid") then
                                vu421.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 0
                            end
                        end
                    end)
                    vu429["HORROR SCREAM 15"]:Play()
                    game.TweenService:Create(vu429, TweenInfo.new(0.4, Enum.EasingStyle.Circular, Enum.EasingDirection.In), {
                        CFrame = vu421.Character.HumanoidRootPart.CFrame
                    }):Play()
                    wait(0.4)
                    vu421.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(30)
                    v425:Shake(v422.Presets.Explosion)
                    DEATHMESSAGE({
                        "You died to who you call Shocker..",
                        "Dont look at it or it stuns you!"
                    }, "Shocker")
                    game.TweenService:Create(vu429, TweenInfo.new(0.4, Enum.EasingStyle.Circular, Enum.EasingDirection.In), {
                        CFrame = vu429.CFrame + Vector3.new(0, - 10, 0)
                    }):Play()
                    game.TweenService:Create(vu429.PlaySound, TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.In), {
                        Volume = 0
                    }):Play()
                    wait(1)
                    vu429:Destroy()
                    wait(2)
                    vu431 = false
                end
                if vu431 == false then
                    if vu420 == false then
                        vu420 = true
                        getgenv().Title = "Shocking Experience"
                        getgenv().Description = "Look at me."
                        getgenv().Reason = "Encounter Shocker."
                        getgenv().BadgeId = 2129271052
                        getgenv().Category = 10
                        local vu433 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                        debug.getupvalue(vu433, 1)
                        local v434, v435, v436 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                        while true do
                            local v437
                            v436, v437 = v434(v435, v436)
                            if v436 == nil then
                                break
                            end
                            v437.Title = getgenv().Title
                            v437.Desc = getgenv().Description
                            v437.Reason = getgenv().Reason
                            v437.BadgeId = getgenv().BadgeId
                            v437.Category = getgenv().Category
                        end
                        spawn(function()
                            vu433(nil, "Join")
                        end)
                    end
                    game.TweenService:Create(vu429, TweenInfo.new(0.4, Enum.EasingStyle.Circular, Enum.EasingDirection.In), {
                        CFrame = vu429.CFrame + Vector3.new(0, - 20, 0)
                    }):Play()
                    game.TweenService:Create(vu429.PlaySound, TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.In), {
                        Volume = 0
                    }):Play()
                    wait(1)
                    local v438 = vu429
                    vu429.Destroy(v438)
                end
            end
        end)
        local vu439 = {
            false,
            true,
            false,
            true,
            false,
            false,
            true,
            false,
            false,
            true
        }
        local vu440 = 0
        local function vu482()
            wait()
            if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                vu482()
            else
                local vu441 = false
                local _ = game.Players.LocalPlayer
                local _ = game.ReplicatedStorage
                local vu442 = 80
                require(game.ReplicatedStorage.ClientModules.Module_Events)
                local v443 = require(game.ReplicatedStorage.CameraShaker)
                local vu444 = workspace.CurrentCamera
                local vu446 = v443.new(Enum.RenderPriority.Camera.Value, function(p445)
                    vu444.CFrame = vu444.CFrame * p445
                end)
                vu446:Start()
                function GetTime(p447, p448)
                    return p447 / p448
                end
                local v449 = Vector3.new(0, 3, 0)
                local vu450 = TweenInfo.new(0.5)
                local vu451 = {
                    Color = Color3.new(0.454902, 0.529412, 1)
                }
                vu446:Shake(v443.Presets.Earthquake)
                local v452, v453, v454 = pairs(game.Workspace.CurrentRooms:GetDescendants())
                local function v457(pu455)
                    spawn(function()
                        local v456 = pu455.Color
                        task.wait(5)
                        game.TweenService:Create(pu455, TweenInfo.new(0.5), {
                            Color = v456
                        }):Play()
                    end)
                end
                local v458 = 99999
                local v459 = 40
                while true do
                    local v460, vu461 = v452(v453, v454)
                    if v460 == nil then
                        break
                    end
                    v454 = v460
                    if vu461:IsA("Light") then
                        pcall(v457, vu461)
                        game.TweenService:Create(vu461, vu450, vu451):Play()
                        if vu461.Parent.Name == "LightFixture" then
                            pcall(v457, vu461.Parent:FindFirstChild("Neon"))
                            pcall(function()
                                game.TweenService:Create(vu461.Parent:FindFirstChild("Neon"), vu450, vu451):Play()
                            end)
                        end
                    end
                end
                local v462 = vu8:Clone()
                v462.Parent = workspace
                local vu463 = v462:FindFirstChildWhichIsA("BasePart")
                vu463.Rush.Volume = 10
                vu463.Rush.RollOffMinDistance = 2
                vu463.Rush.RollOffMaxDistance = 150
                vu463.Silence:Play()
                local function vu470(p464, p465)
                    if vu441 ~= true then
                        local v466 = vu463.Position
                        local v467 = (p464.HumanoidRootPart.Position - vu463.Position).unit * p465
                        local v468 = Ray.new(v466, v467)
                        local v469, _ = workspace:FindPartOnRay(v468, vu463)
                        if not v469 then
                            return false
                        end
                        if v469:IsDescendantOf(p464) then
                            vu441 = true
                            return true
                        end
                    end
                end
                spawn(function()
                    wait(3)
                    while vu463 ~= nil do
                        wait(0.2)
                        local v471 = game.Players.LocalPlayer
                        local _ = script.Parent
                        if v471.Character ~= nil and (v471.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection ~= Vector3.new(0, 0, 0) and (v471.Character:GetAttribute("Hiding") or vu470(v471.Character, 50))) then
                            vu463.Rush:Stop()
                            DEATHMESSAGE({
                                "You died to who you call Cease...",
                                "Its tactic is appearing after rush...",
                                "It sees through movement and can see anyone in wardrobes."
                            }, "Cease")
                            v471.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                        end
                        if v471.Character ~= nil and (v471.Character:FindFirstChild("HumanoidRootPart") and (vu463.Position - v471.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < vu442) then
                            vu446:ShakeOnce(6, 66, 0, 2, 1, 6)
                        end
                    end
                end)
                vu463.Rush:Play()
                vu463.Rush.Pitch = 0.1
                game.TweenService:Create(vu463.Rush, TweenInfo.new(6), {
                    Volume = 0.8
                }):Play()
                local v472 = workspace.CurrentRooms
                local v473 = vu463
                for v474 = 1, game.ReplicatedStorage.GameData.LatestRoom.Value do
                    local v475 = v474
                    if v472:FindFirstChild(v475) then
                        print("room " .. v475)
                        local v476 = v472[v475]
                        if v476:FindFirstChild("Nodes") then
                            local v477 = v476:FindFirstChild("Nodes")
                            for v478 = 1, # v477:GetChildren() do
                                if v477:FindFirstChild(v478) then
                                    local v479 = v477[v478]
                                    local v480 = (v473.Position - v479.Position).magnitude
                                    local v481 = game.TweenService:Create(v473, TweenInfo.new(GetTime(v480, v458), Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {
                                        CFrame = v479.CFrame + v449
                                    })
                                    v481:Play()
                                    v481.Completed:Wait()
                                    if v476.Name ~= game.ReplicatedStorage.GameData.LatestRoom.Value then
                                        v458 = v459
                                    else
                                        v476:WaitForChild("Door").ClientOpen:FireServer()
                                        v458 = v459
                                    end
                                end
                            end
                        end
                    end
                end
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
                v473.Anchored = false
                v473.CanCollide = false
                wait(2)
                v473:Destroy()
            end
        end
        workspace.DescendantRemoving:Connect(function(p483)
            if p483.Name == "RushMoving" then
                vu440 = vu440 + 1
                if vu440 == # vu439 then
                    vu440 = 1
                end
                if vu439[vu440] and vu439[vu440] == true then
                    wait(10)
                    pcall(vu482)
                end
            end
        end)
        spawn(function()
            getgenv().death = false
            local function vu494()
                while true do
                    wait(660)
                    if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                        break
                    end
                    local v484 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                    local v485 = v484.createEntity({
                        Model = "12797525404",
                        Speed = 40,
                        DelayTime = 0,
                        HeightOffset = 0,
                        CanKill = true,
                        BreakLights = true,
                        FlickerLights = {
                            false,
                            80
                        },
                        Cycles = {
                            Min = 1,
                            Max = 1,
                            WaitTime = 0.1
                        },
                        CamShake = {
                            true,
                            {
                                5,
                                15,
                                0.1,
                                1
                            },
                            10
                        },
                        Jumpscare = {
                            true,
                            {
                                Image1 = "rbxassetid://11394027278",
                                Image2 = "rbxassetid://11395249153",
                                Shake = true,
                                Sound1 = {
                                    10483790459,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Sound2 = {
                                    10483837590,
                                    {
                                        Volume = 0.5
                                    }
                                },
                                Flashing = {
                                    true,
                                    Color3.fromRGB(48, 25, 52)
                                },
                                Tease = {
                                    Min = 1,
                                    Max = 1,
                                    false
                                }
                            }
                        },
                        CustomDialog = {
                            "You died to who you call Silence",
                            "Stay as silent as possible when you suspect its coming, so you know when to hide!",
                            "Its slow, but hard to hear",
                            "so hide!"
                        }
                    })
                    local v486 = require(game.ReplicatedStorage.CameraShaker)
                    local vu487 = workspace.CurrentCamera
                    v486.new(Enum.RenderPriority.Camera.Value, function(p488)
                        vu487.CFrame = vu487.CFrame * p488
                    end)
                    function v485.Debug.OnEntitySpawned(_)
                    end
                    function v485.Debug.OnEntityDespawned(_)
                        if getgenv().death == false then
                            getgenv().Title = "Eyes Closed Ears open"
                            getgenv().Description = "Stay silent or I wont be heard"
                            getgenv().Reason = "Encounter Silence"
                            getgenv().BadgeId = 2129524598
                            getgenv().Category = 10
                            local v489 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                            debug.getupvalue(v489, 1)
                            local v490, v491, v492 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                            while true do
                                local v493
                                v492, v493 = v490(v491, v492)
                                if v492 == nil then
                                    break
                                end
                                v493.Title = getgenv().Title
                                v493.Desc = getgenv().Description
                                v493.Reason = getgenv().Reason
                                v493.BadgeId = getgenv().BadgeId
                                v493.Category = getgenv().Category
                            end
                            v489(nil, "Join")
                        end
                    end
                    function v485.Debug.OnEntityStartMoving(_)
                    end
                    function v485.Debug.OnEntityFinishedRebound(_)
                    end
                    function v485.Debug.OnDeath()
                        getgenv().death = true
                    end
                    v484.runEntity(v485)
                end
                vu494()
            end
            vu494()
        end)
        spawn(function()
            (function()
                while wait(2000) do
                    local v495 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                    local v496 = v495.createEntity
                    local v497 = {
                        CustomName = "monster2",
                        Model = "11914816436",
                        Speed = 1500,
                        DelayTime = 15,
                        HeightOffset = 0.1,
                        CanKill = true,
                        KillRange = 50,
                        BackwardsMovement = true,
                        BreakLights = false,
                        FlickerLights = {
                            true,
                            0.5
                        },
                        Cycles = {
                            Min = 5,
                            Max = 5,
                            WaitTime = 0.4
                        },
                        CamShake = {
                            true,
                            {
                                3.5,
                                35,
                                0.1,
                                1.5
                            },
                            100
                        },
                        Jumpscare = {
                            true,
                            {
                                Image1 = "rbxassetid://12650043163",
                                Image2 = "rbxassetid://15758689093",
                                Shake = true,
                                Sound1 = {
                                    10483790459,
                                    {
                                        Volume = 0.2
                                    }
                                },
                                Sound2 = {
                                    10483837590,
                                    {
                                        Volume = 1,
                                        PlaybackSpeed = 1.4
                                    }
                                },
                                Flashing = {
                                    true,
                                    Color3.fromRGB(255, 255, 255)
                                },
                                Tease = {
                                    Min = 2,
                                    Max = 2,
                                    true
                                }
                            }
                        },
                        CustomDialog = {
                            "You died to A-200..",
                            "Once he appears you can hear a thud as a cue...",
                            "He is really fast...",
                            "He will give you time to hide, so hide once you hear him!"
                        }
                    }
                    local v498 = v496(v497)
                    local vu499 = false
                    function v498.Debug.OnEntitySpawned()
                        vu499 = true
                        spawn(function()
                            local v500 = workspace.monster2.monster2.BillboardGui:GetChildren()
                            while wait(Random.new():NextInteger(0.5, 0.7)) and vu499 do
                                local v501, v502, v503 = pairs(v500)
                                while true do
                                    local v504
                                    v503, v504 = v501(v502, v503)
                                    if v503 == nil then
                                        break
                                    end
                                    v504.Visible = false
                                end
                                v500[math.random(1, # v500)].Visible = true
                            end
                        end)
                    end
                    function v498.Debug.OnEntityDespawned()
                        vu499 = false
                    end
                    function v498.Debug.OnEntityStartMoving()
                        spawn(function()
                            repeat
                                wait()
                            until workspace.monster2
                            while vu499 do
                                wait(math.random(1, 5))
                                local v505 = workspace.monster2.monster2["windy" .. math.random(1, 4)]
                                v505.RollOffMinDistance = 10
                                v505.RollOffMaxDistance = 500
                                v505:Play()
                            end
                        end)
                    end
                    function v498.Debug.OnEntityFinishedRebound()
                    end
                    function v498.Debug.OnEntityEnteredRoom(_)
                    end
                    function v498.Debug.OnLookAtEntity()
                    end
                    function v498.Debug.OnDeath()
                    end
                    v495.runEntity(v498)
                end
            end)()
        end)
        spawn(function()
            getgenv().death = false
            local function vu529()
                while true do
                    wait(365)
                    game.ReplicatedStorage.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
                    function DEATHMESSAGE(pu506, pu507)
                        spawn(function()
                            for _ = 1, 50 do
                                wait()
                                game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = pu507
                                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, pu506, "Blue")
                            end
                        end)
                    end
                    if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
                        break
                    end
                    wait(0.01)
                    local v508 = game.Players.LocalPlayer
                    local vu509 = workspace.CurrentCamera
                    local vu510 = v508.Character or v508.CharacterAdded:Wait()
                    game:GetService("ReplicatedStorage")
                    local v512 = require(game.ReplicatedStorage:WaitForChild("CameraShaker")).new(Enum.RenderPriority.Camera.Value, function(p511)
                        vu509.CFrame = vu509.CFrame * p511
                    end)
                    v512:Start()
                    local v513 = Instance.new("Model", game:GetService("Lighting"))
                    local v514 = vu5:Clone()
                    local v515 = v514.FrostyNew
                    local v516 = v515.Attachment
                    v514.Parent = workspace
                    v513:Destroy()
                    local v517 = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
                    local v518 = math.floor(# v517.Nodes:GetChildren() / 2)
                    v515.CFrame = (v518 == 0 and v517[v517.Name] or v517.Nodes[v518]).CFrame + Vector3.new(0, 11, 0)
                    local v519 = Instance.new("ColorCorrectionEffect")
                    v519.Parent = game:GetService("Lighting")
                    v519.TintColor = Color3.new(1, 1, 1)
                    v519.Enabled = false
                    local v520 = v512:StartShake(3.6, 55, 5)
                    v516.face.Enabled = false
                    v516.BlackTrail.Enabled = false
                    v516.Heylois.Enabled = false
                    v516.smoke.Enabled = true
                    v516.BlackTrai3l.Enabled = true
                    v516.BlackTrai2l.Enabled = true
                    v515.Part.ParticleEmitter.Enabled = false
                    v515["Static Effect"]:Play()
                    wait(5)
                    v515["Static Effect"]:Play()
                    game.TweenService:Create(v515["Static Effect"], TweenInfo.new(2), {
                        Pitch = 0
                    }):Play()
                    v520:StartFadeOut(2.5)
                    wait(2)
                    local v521 = v512:StartShake(2, 55, 25, nil, Vector3.new(5, 5, 5))
                    game.TweenService:Create(v519, TweenInfo.new(7), {
                        TintColor = Color3.new(0.00784314, 0.188235, 1)
                    }):Play()
                    local vu522 = true
                    spawn(function()
                        while wait(1) and vu522 do
                            local v523 = vu510:FindFirstChildOfClass("Humanoid")
                            if v523 then
                                local v524 = vu510:FindFirstChild("Lighter")
                                if v524 then
                                    local v525 = v524:FindFirstChild("EffectsHolder")
                                    if v525 and v525.AttachOn:FindFirstChildWhichIsA("ParticleEmitter").Enabled == false then
                                        v523:TakeDamage(5)
                                    end
                                else
                                    v523:TakeDamage(5)
                                end
                            else
                                v523:TakeDamage(5)
                            end
                            if v523.Health < 10 then
                                DEATHMESSAGE({
                                    "You died to who you call Frostbite...",
                                    "He will spawn in the middle and start freezing the room.",
                                    "Find something that has heat to keep you warm!"
                                }, "FrostBite")
                            end
                        end
                    end)
                    v519.Enabled = true
                    v516.face.Enabled = true
                    v516.BlackTrail.Enabled = true
                    v516.Heylois.Enabled = true
                    v516.smoke.Enabled = true
                    v516.BlackTrai3l.Enabled = true
                    v516.BlackTrai2l.Enabled = true
                    v515.Part.ParticleEmitter.Enabled = true
                    v515.Ambience:Play()
                    v515.AmbienceFar:Play()
                    game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
                    vu522 = false
                    v521:StartFadeOut(15)
                    v520:StartFadeOut(1)
                    v515["Static Effect"]:Stop()
                    v515.Ambience:Stop()
                    v515.AmbienceFar:Stop()
                    local v526 = Instance.new("Sound", v515)
                    local v527 = Instance.new("FlangeSoundEffect")
                    local v528 = Instance.new("DistortionSoundEffect")
                    FlangeSoundEffect3 = Instance.new("FlangeSoundEffect")
                    v526.Name = "ahhhhhh"
                    v526.MaxDistance = 500
                    v526.Pitch = 0.23999999463558197
                    v526.PlaybackSpeed = 0.23999999463558197
                    v526.RollOffMode = Enum.RollOffMode.InverseTapered
                    v526.SoundId = "rbxassetid://6305809364"
                    v527.Parent = v526
                    v527.Rate = 0.75
                    v527.Depth = 1
                    v527.Mix = 0.7300000190734863
                    v528.Parent = v526
                    v528.Level = 0.9800000190734863
                    FlangeSoundEffect3.Parent = v526
                    FlangeSoundEffect3.Rate = 0.25
                    FlangeSoundEffect3.Depth = 1
                    FlangeSoundEffect3.Mix = 1
                    v526:Play()
                    v516.face.Enabled = false
                    v516.BlackTrail.Enabled = false
                    v516.Heylois.Enabled = false
                    v516.smoke.Enabled = true
                    v516.BlackTrai3l.Enabled = true
                    v516.BlackTrai2l.Enabled = true
                    v515.Part.ParticleEmitter.Enabled = false
                    v526.Ended:Wait()
                    v516.BlackTrai3l.Enabled = false
                    v516.BlackTrai2l.Enabled = false
                    v516.smoke.Enabled = false
                    wait(2)
                    v514:Destroy()
                    game.TweenService:Create(v519, TweenInfo.new(7), {
                        TintColor = Color3.new(1, 1, 1)
                    }):Play()
                end
                vu529()
            end
            vu529()
        end)
        function dread()
            if not game.Lighting:FindFirstChild("Ambience_Dread") then
                Instance.new("ColorCorrectionEffect", game.Lighting).Name = "Ambience_Dread"
            end
            local function vu535(p530)
                local v531, v532 = workspace.CurrentCamera:WorldToViewportPoint(p530.Position)
                if v532 then
                    v532 = v531.Z > 0
                end
                local v533 = RaycastParams.new()
                v533.FilterType = Enum.RaycastFilterType.Blacklist
                v533.FilterDescendantsInstances = {
                    p530
                }
                local v534 = workspace:Raycast(p530.Position, game.Players.LocalPlayer.Character.UpperTorso.Position - p530.Position, v533)
                if v532 then
                    if v534 then
                        v534 = v534.Instance
                    end
                    v532 = v534.Parent == game.Players.LocalPlayer.Character
                end
                return v532
            end
            local v536 = require(game.ReplicatedStorage.CameraShaker)
            local vu537 = workspace.CurrentCamera
            local vu539 = v536.new(Enum.RenderPriority.Camera.Value, function(p538)
                vu537.CFrame = vu537.CFrame * p538
            end)
            vu539:Start()
            vu539:ShakeOnce(2, 10, 1, 1)
            local vu540 = vu9:Clone()
            vu540.Parent = workspace
            local v541 = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
            local vu542 = vu540.RushNew
            local v543 = not v541:FindFirstChild("Nodes") and 0 or math.floor(# v541.Nodes:GetChildren() / 2)
            vu542.CFrame = (v543 == 0 and v541[v541.Name] or v541.Nodes[v543]).CFrame + Vector3.new(0, 6, 0)
            game.Lighting.Ambience_Dread.Enabled = true
            game.Lighting.Ambience_Dread.Brightness = 0
            game.Lighting.Ambience_Dread.Contrast = 0
            game.Lighting.Ambience_Dread.Saturation = 0
            game:GetService("TweenService"):Create(game.Lighting.Ambience_Dread, TweenInfo.new(2), {
                Brightness = 0.1,
                Contrast = 0.2,
                Saturation = - 0.7
            }):Play()
            coroutine.wrap(function()
                while not vu535(vu542) do
                    task.wait(0.5)
                end
                wait(1.5)
                game.Lighting.Ambience_Dread.Enabled = false
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).stopcam = true
                local v544 = workspace.CurrentCamera
                local v545 = v544.CFrame
                v544.CameraType = Enum.CameraType.Scriptable
                local v546 = game:GetService("TweenService"):Create(v544, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    CFrame = CFrame.lookAt(v545.p, vu542.Position)
                })
                v546:Play()
                wait(0.15)
                c = vu24:Clone()
                c:Play()
                v546:Pause()
                local v547, v548, v549 = pairs(workspace:GetDescendants())
                while true do
                    local v550
                    v549, v550 = v547(v548, v549)
                    if v549 == nil then
                        break
                    end
                    if v550.ClassName == "ParticleEmitter" then
                        v550.TimeScale = 0
                    end
                end
                wait(2)
                game.Lighting.MainColorCorrection.Brightness = - 1
                game.Lighting.MainColorCorrection.Contrast = - 4
                game.Lighting.MainColorCorrection.Saturation = - 1
                local v551 = vu542
                local v552, v553, v554 = pairs(v551:GetDescendants())
                while true do
                    local v555
                    v554, v555 = v552(v553, v554)
                    if v554 == nil then
                        break
                    end
                    if v555.Name == "PointLight" then
                        v555:Destroy()
                    end
                end
                vu539:ShakeOnce(10, 100, 0.1, 1.0435464695476984e101)
                wait(1)
                local v556 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
                v556.stopcam = false
                v556.freemouse = false
                wait(0.4)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/XAtomMaster339871/dkrsoilcfrkjghfhgrthngnrtuyghrtuhngur/main/erfz", true))()
                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                    "You died to Dread...",
                    "Its presence is summoned when the clock hits 12...",
                    "Do not observe it! You may lose your sanity!"
                }, "Blue")
            end)()
            coroutine.wrap(function()
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
                task.wait()
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
                task.wait()
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
                vu540:Destroy()
                game.Lighting.Ambience_Dread.Enabled = false
            end)()
        end
        function a90()
            local v557 = require(game.ReplicatedStorage.CameraShaker)
            local vu558 = workspace.CurrentCamera
            local v560 = v557.new(Enum.RenderPriority.Camera.Value, function(p559)
                vu558.CFrame = vu558.CFrame * p559
            end)
            v560:Start()
            local v561 = game:GetService("TweenService")
            local v562 = game.Players.LocalPlayer
            local v563 = game.Players.LocalPlayer.PlayerGui.MainUI
            local vu564 = v563.Jumpscare.Jumpscare_A90
            local v565 = v563.Initiator.Main_Game.RemoteListener.Modules.A90
            local vu566 = require(v563.Initiator.Main_Game)
            local vu567 = true
            local vu568 = false
            local vu569 = vu566.cam.CFrame.LookVector
            local vu570 = 0
            game.SoundService.Main.Volume = 0
            vu564.Face.Image = "http://www.roblox.com/asset/?id=12635832722"
            vu564.FaceAngry.Image = "http://www.roblox.com/asset/?id=12635955412"
            v565.Spawn.SoundGroup = nil
            v565.Hit.SoundGroup = nil
            v565.Spawn:Play()
            vu564.BackgroundTransparency = 1
            vu564.Face.Visible = true
            vu564.FaceAngry.Visible = false
            vu564.Static.Visible = true
            vu564.Static2.Visible = true
            vu564.Static.ImageTransparency = 1
            vu564.Static2.ImageTransparency = 1
            vu564.Face.ImageColor3 = Color3.new(0, 0, 0)
            vu564.Face.Rotation = Random.new():NextNumber(- 5, 5)
            vu564.Face.Position = UDim2.new(Random.new():NextNumber(10, 90) / 100, 0, Random.new():NextNumber(10, 90) / 100, 0)
            vu564.Visible = true
            task.wait(0.03)
            vu564.Face.ImageColor3 = Color3.new(1, 1, 1)
            task.wait(0.28)
            vu564.BackgroundTransparency = 0
            vu564.Face.Rotation = 0
            vu564.Face.Position = UDim2.new(0.5, 0, 0.49, 0)
            task.wait(0.03)
            vu564.StopIcon.Visible = true
            vu564.BackgroundColor3 = Color3.new(0, 0, 0)
            vu564.BackgroundTransparency = 1
            vu564.Static.ImageTransparency = 0.8
            vu564.Static2.ImageTransparency = 0.8
            task.delay(0.2, function()
                vu564.StopIcon.Visible = false
                while vu567 do
                    local v571 = math.random(0, 1)
                    local v572 = 100 + vu570 * 0.5
                    vu570 = vu570 + 15
                    task.wait(0.03)
                    vu564.Static.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0)
                    vu564.Static.Rotation = math.random(0, 1) * 180
                    vu564.Static2.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0)
                    vu564.Static2.Rotation = math.random(0, 1) * 180
                    vu564.Face.Position = UDim2.new(0.5, 0, 0.49, math.random(- 1, 1))
                    vu564.FaceAngry.Position = UDim2.new(0.5 + Random.new():NextNumber(- v572, v572) / 50000, 0, 0.49 + Random.new():NextNumber(- v572, v572) / 30000, math.random(- 1, 1))
                    vu564.FaceAngry.Rotation = Random.new():NextNumber(- 1, 1) * (vu570 * 0.0015)
                    vu564.FaceAngry.ImageColor3 = Color3.new(1, v571, v571)
                    if not vu568 then
                        if (vu569 - vu566.cam.CFrame.LookVector).Magnitude <= 0.4 then
                            if vu566.hum.MoveDirection.Magnitude > 0.4 then
                                vu568 = true
                            end
                        else
                            vu568 = true
                        end
                    end
                end
            end)
            task.wait(0.3)
            vu564.BackgroundColor3 = Color3.new(0, 0, 0)
            vu564.BackgroundTransparency = 0
            vu564.Static.ImageTransparency = 0
            vu564.Static2.ImageTransparency = 0.5
            task.wait(0.03)
            vu564.Face.ImageColor3 = Color3.new(1, 0, 0)
            task.wait(0.03)
            vu564.Visible = false
            task.wait(0.08)
            if vu568 then
                local vu573 = true
                vu564.Visible = true
                v565.Hit:Play()
                task.wait(0.03)
                vu564.Face.ImageColor3 = Color3.new(1, 1, 1)
                task.wait(0.03)
                vu564.BackgroundTransparency = 0
                vu564.Static.ImageTransparency = 0
                vu564.Static2.ImageTransparency = 0.5
                task.wait(0.067)
                vu564.FaceAngry.Size = UDim2.new(0.8, 0, 0.8, 0)
                vu564.FaceAngry.Rotation = 0
                vu564.FaceAngry.ImageTransparency = 0
                vu564.FaceAngry.ImageColor3 = Color3.new(1, 0, 0)
                vu564.FaceAngry.Visible = true
                task.wait(0.067)
                vu564.FaceAngry.ImageColor3 = Color3.new(1, 1, 1)
                vu564.Face.Visible = false
                task.wait(0.75)
                v562.Character.Humanoid.Health = v562.Character.Humanoid.Health - 70
                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
                    "You died to an entity called A-90...",
                    "React Fast and Dont Move a Muscle!"
                }, "Blue")
                task.wait(0.1)
                vu564.FaceAngry.Visible = false
                vu564.BackgroundColor3 = Color3.new(1, 1, 1)
                vu564.Static.ImageTransparency = 1
                vu564.Static2.ImageTransparency = 1
                task.wait(0.067)
                vu564.BackgroundColor3 = Color3.new(1, 0, 0)
                task.wait(0.067)
                vu564.BackgroundColor3 = Color3.new(0, 0, 0)
                task.wait(0.067)
                v560:ShakeOnce(25, 8, 0, 4)
                vu567 = false
                task.wait(0.03)
                v565.Spawn:Stop()
                vu564.BackgroundTransparency = 1
                vu564.Static.ImageTransparency = 0.5
                vu564.Static2.ImageTransparency = 0.5
                v561:Create(vu564.Static, TweenInfo.new(20, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = 1
                }):Play()
                v561:Create(vu564.Static2, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = 1
                }):Play()
                local v574 = Random.new():NextNumber(2, 3)
                vu564.FaceAngry.Rotation = Random.new():NextNumber(- 3, 3)
                vu564.FaceAngry.Visible = true
                vu564.FaceAngry.ImageColor3 = Color3.new(1, 0, 0)
                vu564.FaceAngry.Size = UDim2.new(v574, 0, v574, 0)
                v561:Create(vu564.FaceAngry, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = 1
                }):Play()
                game.SoundService.Main.Volume = 0
                game.SoundService.Main.EqualizerSoundEffect.Enabled = true
                game.SoundService.Main.EqualizerSoundEffect.HighGain = - 50
                game.SoundService.Main.EqualizerSoundEffect.LowGain = 10
                game.SoundService.Main.EqualizerSoundEffect.MidGain = - 50
                v561:Create(game.SoundService.Main.EqualizerSoundEffect, TweenInfo.new(15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                    LowGain = 0,
                    HighGain = 0,
                    MidGain = 0
                }):Play()
                v561:Create(game.SoundService.Main, TweenInfo.new(5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Volume = 1
                }):Play()
                task.spawn(function()
                    while vu573 do
                        local v575 = 100 + 0.1
                        task.wait()
                        vu564.Static.Position = UDim2.new(Random.new():NextNumber(0, v575) / 100, 0, Random.new():NextNumber(0, v575) / 100, 0)
                        vu564.Static.Rotation = math.random(0, 1) * 180
                        vu564.Static2.Position = UDim2.new(Random.new():NextNumber(0, v575) / 100, 0, Random.new():NextNumber(0, v575) / 100, 0)
                        vu564.Static2.Rotation = math.random(0, 1) * 180
                    end
                end)
                task.delay(20, function()
                    vu573 = false
                    vu564.Visible = false
                    vu564.BackgroundTransparency = 0
                    vu564.Static.ImageTransparency = 1
                    vu564.Static2.ImageTransparency = 1
                end)
            else
                v565.Spawn:Stop()
                vu564.BackgroundTransparency = 1
                vu564.Visible = false
                v560:ShakeOnce(5, 10, 0.1, 1)
                vu567 = false
                game.SoundService.Main.Volume = 1
            end
        end
        coroutine.wrap(function()
            local v576 = game:GetService("TextChatService")
            local vu577 = game:GetService("Players")
            local vu578 = 0
            function v576.OnIncomingMessage(p579, _)
                local v580 = Instance.new("TextChatMessageProperties")
                if p579.TextSource then
                    msg = string.lower(p579.Text)
                    v580.PrefixText = "<font color=\'#FFFFFF\'>[Player]</font> " .. p579.PrefixText
                    if p579.TextSource.UserId == 530829101 or p579.TextSource.UserId == 7175833073 then
                        v580.PrefixText = "<font color=\'#F53930\'>[Owner\'s Alt]</font> <font color=\'#F53930\'>[OOoSkibidi]</font> " .. p579.PrefixText
                    end
                    if p579.TextSource.UserId == 2763394267 then
                        v580.PrefixText = "<font color=\'#a85232\'>[Noonie]</font> <font color=\'#a85232\'>[:pleading:]</font> " .. p579.PrefixText
                    end
                    if p579.TextSource.UserId == 2300945089 then
                        if msg == "/subscribe" or msg == "/sub" then
                            v580.PrefixText = "<font color=\'#b71109\'>https://www.youtube.com/@kardinhong</font>; " .. p579.PrefixText
                        else
                            v580.PrefixText = "<font color=\'#b71109\'>[Kardin]</font> <font color=\'#b71109\'>[ lolcat is goat ]</font>  <font color=\'#b71109\'>Jiggle Jiggle My Balls</font> " .. p579.PrefixText
                        end
                    end
                    if p579.TextSource.UserId == 4322541912 then
                        v580.PrefixText = "<font color=\'#6865FF\'>[The Nostalgic Idiot]</font> <font color=\'#393B45\'>[nostalgia]</font> " .. p579.PrefixText
                    end
                    if p579.TextSource.UserId == 1520423590 then
                        v580.PrefixText = "<font color=\'#09B711\'>[Ping]</font> <font color=\'#6E3F05\'>[Founder Of Beans]</font> " .. p579.PrefixText
                    end
                    if p579.TextSource.UserId == 3962633044 then
                        v580.PrefixText = "<font color=\'#e2bb6e\'>[Gordon Freeman]</font> <font color=\'#e29b40\'>Master of the Crowbar</font> " .. p579.PrefixText
                    end
                    if p579.TextSource.UserId == 36592998 then
                        v580.PrefixText = "<font color=\'#09B711\'>[Skid Exterminator]</font> <font color=\'#09B711\'>[Very Cool Exterminator]</font> <font color=\'#09B711\'>[La Skid Exterminator Cat V2]</font> " .. p579.PrefixText
                    end
                    local vu581 = vu577:GetPlayerByUserId(p579.TextSource.UserId)
                    if vu581 == game.Players.LocalPlayer then
                        vu578 = vu578 + 1
                        if vu578 == 2 then
                            vu578 = 0
                            return v580
                        end
                    end
                    if p579.TextSource.UserId == 4888633389 or (p579.TextSource.UserId == 3338249600 or (p579.TextSource.UserId == 530829101 or (p579.TextSource.UserId == 4332501203 or (p579.TextSource.UserId == 1520423590 or (p579.TextSource.UserId == 2763394267 or (p579.TextSource.UserId == 3659299888 or (p579.TextSource.UserId == 3962633044 or p579.TextSource.UserId ~= 0))))))) then
                        if msg == "/die" then
                            coroutine.wrap(function()
                                local v582 = Instance.new("Sound")
                                v582.Parent = workspace
                                v582.SoundId = "rbxassetid://8509804480"
                                v582.PlayOnRemove = true
                                v582.Volume = 10
                                v582:Remove()
                            end)()
                        end
                        if msg == "/60" or msg == "/a-60" then
                            coroutine.wrap(vu229)()
                        end
                        if msg == "/killyourself" or msg == "/ks" then
                            coroutine.wrap(function()
                                vu581.Character.Humanoid.Health = 0
                            end)()
                        end
                        if msg == "/dread" then
                            coroutine.wrap(dread)()
                        end
                        if msg == "/killplayers" or msg == "/kp" then
                            coroutine.wrap(function()
                                DEATHMESSAGE({
                                    "You died to " .. vu581.DisplayName
                                }, vu581.DisplayName)
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                            end)()
                        end
                        if msg == "/a-90" or msg == "/90" then
                            coroutine.wrap(a90)()
                        end
                        if msg == "/200" or (msg == "/a-200" or msg == "/a200") then
                            coroutine.wrap(function()
                                local v583 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                                local v584 = v583.createEntity
                                local v585 = {
                                    CustomName = "monster2",
                                    Model = "11914816436",
                                    Speed = 1500,
                                    DelayTime = 15,
                                    HeightOffset = 0.1,
                                    CanKill = true,
                                    KillRange = 50,
                                    BackwardsMovement = true,
                                    BreakLights = false,
                                    FlickerLights = {
                                        true,
                                        0.5
                                    },
                                    Cycles = {
                                        Min = 5,
                                        Max = 5,
                                        WaitTime = 0.4
                                    },
                                    CamShake = {
                                        true,
                                        {
                                            3.5,
                                            35,
                                            0.1,
                                            1.5
                                        },
                                        100
                                    }
                                }
                                local v586 = {}
                                local v587 = {
                                    Image1 = "rbxassetid://12650043163",
                                    Image2 = "rbxassetid://15758689093",
                                    Shake = true,
                                    Sound1 = {
                                        10483790459,
                                        {
                                            Volume = 0.2
                                        }
                                    },
                                    Sound2 = {
                                        10483837590,
                                        {
                                            Volume = 1,
                                            PlaybackSpeed = 1.4
                                        }
                                    },
                                    Flashing = {
                                        true,
                                        Color3.fromRGB(255, 255, 255)
                                    },
                                    Tease = {
                                        Min = 2,
                                        Max = 2,
                                        true
                                    }
                                }
                                __set_list(v586, 1, {
                                    true,
                                    v587
                                })
                                v585.Jumpscare = v586
                                v585.CustomDialog = {
                                    "You died to A-200..",
                                    "Once he appears you can hear a thud as a cue...",
                                    "He is really fast...",
                                    "He will give you time to hide, so hide once you hear him!"
                                }
                                local v588 = v584(v585)
                                local vu589 = false
                                function v588.Debug.OnEntitySpawned()
                                    vu589 = true
                                    spawn(function()
                                        local v590 = workspace.monster2.monster2.BillboardGui:GetChildren()
                                        while wait(Random.new():NextInteger(0.5, 0.7)) and vu589 do
                                            local v591, v592, v593 = pairs(v590)
                                            while true do
                                                local v594
                                                v593, v594 = v591(v592, v593)
                                                if v593 == nil then
                                                    break
                                                end
                                                v594.Visible = false
                                            end
                                            v590[math.random(1, # v590)].Visible = true
                                        end
                                    end)
                                end
                                function v588.Debug.OnEntityDespawned()
                                    vu589 = false
                                end
                                function v588.Debug.OnEntityStartMoving()
                                    spawn(function()
                                        repeat
                                            wait()
                                        until workspace.monster2
                                        while vu589 do
                                            wait(math.random(1, 5))
                                            local v595 = workspace.monster2.monster2["windy" .. math.random(1, 4)]
                                            v595.RollOffMinDistance = 10
                                            v595.RollOffMaxDistance = 500
                                            v595:Play()
                                        end
                                    end)
                                end
                                function v588.Debug.OnEntityFinishedRebound()
                                end
                                function v588.Debug.OnEntityEnteredRoom(_)
                                end
                                function v588.Debug.OnLookAtEntity()
                                end
                                function v588.Debug.OnDeath()
                                end
                                v583.runEntity(v588)
                            end)()
                        end
                        if msg == "/trollface" or msg == "/troll" then
                            coroutine.wrap(function()
                                local v596 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                                local v597 = v596.createEntity
                                local v598 = {
                                    CustomName = "Trollface",
                                    Model = "rbxassetid://12442908280",
                                    Speed = 150,
                                    DelayTime = 2,
                                    HeightOffset = 0,
                                    CanKill = false,
                                    KillRange = 50,
                                    BackwardsMovement = false,
                                    BreakLights = false,
                                    FlickerLights = {
                                        true,
                                        1
                                    },
                                    Cycles = {
                                        Min = 1,
                                        Max = 4,
                                        WaitTime = 2
                                    },
                                    CamShake = {
                                        true,
                                        {
                                            3.5,
                                            20,
                                            0.1,
                                            1
                                        },
                                        100
                                    }
                                }
                                local v599 = {}
                                local v600 = {
                                    Image1 = "rbxassetid://10483855823",
                                    Image2 = "rbxassetid://10483999903",
                                    Shake = true,
                                    Sound1 = {
                                        10483790459,
                                        {
                                            Volume = 0.5
                                        }
                                    },
                                    Sound2 = {
                                        10483837590,
                                        {
                                            Volume = 0.5
                                        }
                                    },
                                    Flashing = {
                                        true,
                                        Color3.fromRGB(255, 255, 255)
                                    },
                                    Tease = {
                                        Min = 1,
                                        Max = 3,
                                        true
                                    }
                                }
                                __set_list(v599, 1, {
                                    true,
                                    v600
                                })
                                v598.Jumpscare = v599
                                v598.CustomDialog = {
                                    "Trolled!!!!!!!",
                                    "Balls"
                                }
                                local v601 = v597(v598)
                                v596.runEntity(v601)
                            end)()
                        end
                        if msg == "/silence" or msg == "/sil" then
                            coroutine.wrap(function()
                                local v602 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Backup/Source.lua"))()
                                local v603 = v602.createEntity
                                local v604 = {
                                    Model = "11535812658",
                                    Speed = 40,
                                    DelayTime = 0,
                                    HeightOffset = 0,
                                    CanKill = true,
                                    BreakLights = true,
                                    FlickerLights = {
                                        false,
                                        80
                                    },
                                    Cycles = {
                                        Min = 1,
                                        Max = 1,
                                        WaitTime = 0.1
                                    },
                                    CamShake = {
                                        true,
                                        {
                                            5,
                                            15,
                                            0.1,
                                            1
                                        },
                                        10
                                    }
                                }
                                local v605 = {}
                                local v606 = {
                                    Image1 = "rbxassetid://11394027278",
                                    Image2 = "rbxassetid://11395249153",
                                    Shake = true,
                                    Sound1 = {
                                        10483790459,
                                        {
                                            Volume = 0.5
                                        }
                                    },
                                    Sound2 = {
                                        10483837590,
                                        {
                                            Volume = 0.5
                                        }
                                    },
                                    Flashing = {
                                        true,
                                        Color3.fromRGB(48, 25, 52)
                                    },
                                    Tease = {
                                        Min = 1,
                                        Max = 1,
                                        false
                                    }
                                }
                                __set_list(v605, 1, {
                                    true,
                                    v606
                                })
                                v604.Jumpscare = v605
                                v604.CustomDialog = {
                                    "You died to who you call Silence",
                                    "Stay as silent as possible when you suspect its coming, so you know when to hide!",
                                    "Its slow, but hard to hear",
                                    "so hide!"
                                }
                                local v607 = v603(v604)
                                local v608 = require(game.ReplicatedStorage.CameraShaker)
                                local vu609 = workspace.CurrentCamera
                                v608.new(Enum.RenderPriority.Camera.Value, function(p610)
                                    vu609.CFrame = vu609.CFrame * p610
                                end)
                                function v607.Debug.OnEntitySpawned(_)
                                end
                                function v607.Debug.OnEntityDespawned(_)
                                    if getgenv().death == false then
                                        getgenv().Title = "Eyes Closed Ears open"
                                        getgenv().Description = "Stay silent or I wont be heard"
                                        getgenv().Reason = "Encounter Silence"
                                        getgenv().BadgeId = 2129524598
                                        getgenv().Category = 10
                                        local v611 = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)
                                        debug.getupvalue(v611, 1)
                                        local v612, v613, v614 = pairs(require(game:GetService("ReplicatedStorage").Achievements))
                                        while true do
                                            local v615
                                            v614, v615 = v612(v613, v614)
                                            if v614 == nil then
                                                break
                                            end
                                            v615.Title = getgenv().Title
                                            v615.Desc = getgenv().Description
                                            v615.Reason = getgenv().Reason
                                            v615.BadgeId = getgenv().BadgeId
                                            v615.Category = getgenv().Category
                                        end
                                        v611(nil, "Join")
                                    end
                                end
                                function v607.Debug.OnEntityStartMoving(_)
                                end
                                function v607.Debug.OnEntityFinishedRebound(_)
                                end
                                function v607.Debug.OnDeath()
                                    getgenv().death = true
                                end
                                v602.runEntity(v607)
                            end)()
                        end
                    end
                end
                return v580
            end
        end)()
        coroutine.wrap(function()
            while true do
                repeat
                    wait(math.random(90, 125))
                until not workspace:FindFirstChild("SeekMovingNewClone") and (not workspace.CurrentRooms:FindFirstChild("50") and vu32 == true)
                coroutine.wrap(a90)()
            end
        end)()
        coroutine.wrap(function()
            while true do
                repeat
                    wait(185)
                until not workspace:FindFirstChild("SeekMovingNewClone") and (not workspace.CurrentRooms:FindFirstChild("50") and vu32 == true)
                coroutine.wrap(dread)()
            end
        end)()
    else
        game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Error"
        firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {
            "You need to execute the script at door 0!",
            "Remember this!"
        }, "Blue")
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
    end
end