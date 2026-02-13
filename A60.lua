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