-- HDANH HUB - BLOX FRUITS FULL VERSION
-- Custom UI nhỏ gọn với Toggle hình vuông bo tròn màu hồng

hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)

-- Check game
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "❌ Error";
        Text = "Script only works in Blox Fruits!";
        Duration = 5;
    })
    return
end

-- Variables
local plr = game.Players.LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
_G.SelectWeapon = "Melee"
StartBring = false
MonFarm = ""
PosMon = CFrame.new(0,0,0)
v391 = false
NoClip = false

-- [GAME FUNCTIONS]
function AutoHaki()
    if not plr.Character:FindFirstChild("HasBuso") then
        RS.Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(weaponName)
    if not _G.NotAutoEquip and plr.Backpack:FindFirstChild(weaponName) then
        local tool = plr.Backpack:FindFirstChild(weaponName)
        wait(0.1)
        plr.Character.Humanoid:EquipTool(tool)
    end
end

function UnEquipWeapon(weaponName)
    if plr.Character:FindFirstChild(weaponName) then
        _G.NotAutoEquip = true
        wait(0.5)
        plr.Character:FindFirstChild(weaponName).Parent = plr.Backpack
        wait(0.1)
        _G.NotAutoEquip = false
    end
end

function WaitHRP(player)
    if not player then return end
    return player.Character and player.Character:WaitForChild("HumanoidRootPart") or nil
end

function CheckNearestTeleporter(pos)
    local teleporters = {
        ["Mansion"] = Vector3.new(-12471, 374, -7551),
        ["Lab"] = Vector3.new(-6438, 250, -4501),
        ["GreatTree"] = Vector3.new(28282, 14896, 105),
    }
    local minDist = math.huge
    local nearest = nil
    for name, tpPos in pairs(teleporters) do
        local dist = (Vector3.new(pos.X, pos.Y, pos.Z) - tpPos).Magnitude
        if dist < minDist then
            minDist = dist
            nearest = name
        end
    end
    return nearest
end

function requestEntrance(area)
    RS.Remotes.CommF_:InvokeServer("requestEntrance", area)
end

function topos(targetCFrame)
    if not plr.Character or plr.Character.Humanoid.Health <= 0 then return end
    if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
    
    local dist = (targetCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude
    
    if not plr.Character:FindFirstChild("PartTele") then
        local part = Instance.new("Part", plr.Character)
        part.Size = Vector3.new(10, 1, 10)
        part.Name = "PartTele"
        part.Anchored = true
        part.Transparency = 1
        part.CanCollide = false
        part.CFrame = WaitHRP(plr).CFrame
        
        part:GetPropertyChangedSignal("CFrame"):Connect(function()
            if v391 and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                task.wait()
                WaitHRP(plr).CFrame = part.CFrame
            end
        end)
    end
    
    v391 = true
    local tween = game:GetService("TweenService"):Create(
        plr.Character.PartTele,
        TweenInfo.new(dist / 300, Enum.EasingStyle.Linear),
        {CFrame = targetCFrame}
    )
    tween:Play()
    
    tween.Completed:Connect(function(state)
        if state == Enum.PlaybackState.Completed then
            if plr.Character:FindFirstChild("PartTele") then
                plr.Character.PartTele:Destroy()
            end
            v391 = false
        end
    end)
end

function TP1(cf)
    topos(cf)
end

function StopTween(arg)
    if not arg then
        _G.StopTween = true
        wait(0.2)
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            topos(plr.Character.HumanoidRootPart.CFrame)
        end
        wait(0.2)
        if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            plr.Character.HumanoidRootPart.BodyClip:Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

function BringMob(mobName, bringPos)
    for _, mob in pairs(WS.Enemies:GetChildren()) do
        if mob.Name == mobName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
            if (mob.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                mob.HumanoidRootPart.CFrame = bringPos
                mob.Humanoid.WalkSpeed = 0
                mob.HumanoidRootPart.CanCollide = false
                mob.Head.CanCollide = false
                mob.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                if mob.Humanoid:FindFirstChild("Animator") then
                    mob.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(plr, "SimulationRadius", math.huge)
            end
        end
    end
end

function MaterialMon()
    if _G.SelectMaterial == "Angel Wings" then
        MMon = "Royal Soldier"
        MPos = CFrame.new(-7759, 5606, -1862)
        SP = "SkyArea2"
    elseif _G.SelectMaterial == "Mystic Droplet" then
        MMon = "Water Fighter"
        MPos = CFrame.new(-3331, 239, -10553)
        SP = "ForgottenIsland"
    elseif _G.SelectMaterial == "Vampire Fang" then
        MMon = "Vampire"
        MPos = CFrame.new(-6132, 9, -1466)
        SP = "Graveyard"
    elseif _G.SelectMaterial == "Gunpowder" then
        MMon = "Pistol Billionaire"
        MPos = CFrame.new(-185, 84, 6103)
        SP = "Mansion"
    elseif _G.SelectMaterial == "Fish Tail" then
        if World1 then
            MMon = "Fishman Warrior"
            MPos = CFrame.new(60943, 17, 1744)
            SP = "Underwater City"
        elseif World3 then
            MMon = "Fishman Captain"
            MPos = CFrame.new(-10828, 331, -9049)
            SP = "PineappleTown"
        end
    elseif _G.SelectMaterial == "Magma Ore" then
        if World1 then
            MMon = "Military Soldier"
            MPos = CFrame.new(-5565, 9, 8327)
            SP = "Magma"
        elseif World2 then
            MMon = "Lava Pirate"
            MPos = CFrame.new(-5158, 14, -4654)
            SP = "CircleIslandFire"
        end
    elseif _G.SelectMaterial == "Leather + Scrap Metal" then
        if World1 then
            MMon = "Pirate"
            MPos = CFrame.new(-967, 13, 4034)
            SP = "Pirate"
        elseif World2 then
            MMon = "Mercenary"
            MPos = CFrame.new(-986, 72, 1088)
            SP = "DressTown"
        elseif World3 then
            MMon = "Pirate Millionaire"
            MPos = CFrame.new(-118, 55, 5649)
            SP = "Default"
        end
    elseif _G.SelectMaterial == "Radiactive Material" then
        MMon = "Factory Staff"
        MPos = CFrame.new(-105, 72, -670)
        SP = "Bar"
    elseif _G.SelectMaterial == "Conjured Cocoa" then
        MMon = "Chocolate Bar Battler"
        MPos = CFrame.new(582, 25, -12550)
        SP = "Chocolate"
    end
end

function CheckQuest()
    MyLevel = plr.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059, 15, 1550)
            CFrameMon = CFrame.new(1045, 27, 1560)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598, 35, 153)
            CFrameMon = CFrame.new(-1448, 67, 11)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598, 35, 153)
            CFrameMon = CFrame.new(-1129, 40, -525)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141, 4, 3831)
            CFrameMon = CFrame.new(-1103, 13, 3896)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141, 4, 3831)
            CFrameMon = CFrame.new(-1140, 14, 4322)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894, 5, 4392)
            CFrameMon = CFrame.new(924, 6, 4481)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894, 5, 4392)
            CFrameMon = CFrame.new(1608, 8, 4371)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389, 88, -1298)
            CFrameMon = CFrame.new(1354, 87, -1393)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389, 88, -1298)
            CFrameMon = CFrame.new(1201, 144, -1550)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039, 27, 4324)
            CFrameMon = CFrame.new(-4881, 22, 4273)
        elseif MyLevel >= 150 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4842, 717, -2623)
            CFrameMon = CFrame.new(-4971, 277, -2844)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424, 73, 1836)
            CFrameMon = CFrame.new(-746, 39, 2390)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424, 73, 1836)
            CFrameMon = CFrame.new(-974, 141, 1789)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290, 42, 5579)
            CFrameMon = CFrame.new(-289, 43, 5607)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290, 42, 5579)
            CFrameMon = CFrame.new(-469, 59, 5904)
        end
    end
end

-- NoClip
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarm or _G.AutoFarmMaterial then
                if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local clip = Instance.new("BodyVelocity")
                    clip.Name = "BodyClip"
                    clip.Parent = plr.Character.HumanoidRootPart
                    clip.MaxForce = Vector3.new(100000, 100000, 100000)
                    clip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    plr.Character.HumanoidRootPart.BodyClip:Destroy()
                end
            end
        end)
    end
end)

-- CanCollide False
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarm or _G.AutoFarmMaterial then
                for _, part in pairs(plr.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    end
end)

-- Auto Select Weapon
spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon == "Melee" then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        _G.SelectWeapon = v.Name
                    end
                end
            elseif _G.SelectWeapon == "Sword" then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        _G.SelectWeapon = v.Name
                    end
                end
            elseif _G.SelectWeapon == "Gun" then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        _G.SelectWeapon = v.Name
                    end
                end
            elseif _G.SelectWeapon == "Blox Fruit" then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        end)
    end
end)

-- [CUSTOM UI - COMPACT SIZE]
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local UI = {}
local Colors = {
    Primary = Color3.fromRGB(255, 105, 180),
    Secondary = Color3.fromRGB(255, 182, 193),
    Background = Color3.fromRGB(25, 25, 30),
    TabBg = Color3.fromRGB(30, 30, 35),
    ElementBg = Color3.fromRGB(35, 35, 40),
    Text = Color3.fromRGB(255, 255, 255),
    TextDim = Color3.fromRGB(180, 180, 180),
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HDANH_HUB"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame (Compact: 550x380)
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Colors.Background
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -275, 0.5, -190)
Main.Size = UDim2.new(0, 550, 0, 380)
Main.Active = true
Main.Draggable = true
Main.ClipsDescendants = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = Main

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Colors.Primary
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 35)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Parent = TitleBar
TitleFix.BackgroundColor3 = Colors.Primary
TitleFix.BorderSizePixel = 0
TitleFix.Position = UDim2.new(0, 0, 1, -8)
TitleFix.Size = UDim2.new(1, 0, 0, 8)

local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 0)
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "HDANH HUB - Blox Fruits"
Title.TextColor3 = Colors.Text
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = TitleBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 90)
CloseBtn.BorderSizePixel = 0
CloseBtn.Position = UDim2.new(1, -30, 0.5, -10)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Colors.Text
CloseBtn.TextSize = 16

local CloseBtnCorner = Instance.new("UICorner")
CloseBtnCorner.CornerRadius = UDim.new(0, 4)
CloseBtnCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Sidebar (Tabs)
local Sidebar = Instance.new("ScrollingFrame")
Sidebar.Name = "Sidebar"
Sidebar.Parent = Main
Sidebar.BackgroundColor3 = Colors.TabBg
Sidebar.BorderSizePixel = 0
Sidebar.Position = UDim2.new(0, 0, 0, 35)
Sidebar.Size = UDim2.new(0, 140, 1, -35)
Sidebar.CanvasSize = UDim2.new(0, 0, 0, 0)
Sidebar.ScrollBarThickness = 3
Sidebar.ScrollBarImageColor3 = Colors.Primary

local SidebarList = Instance.new("UIListLayout")
SidebarList.Parent = Sidebar
SidebarList.SortOrder = Enum.SortOrder.LayoutOrder
SidebarList.Padding = UDim.new(0, 1)

SidebarList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Sidebar.CanvasSize = UDim2.new(0, 0, 0, SidebarList.AbsoluteContentSize.Y)
end)

-- Content Area
local ContentArea = Instance.new("Frame")
ContentArea.Name = "ContentArea"
ContentArea.Parent = Main
ContentArea.BackgroundColor3 = Colors.Background
ContentArea.BorderSizePixel = 0
ContentArea.Position = UDim2.new(0, 140, 0, 35)
ContentArea.Size = UDim2.new(1, -140, 1, -35)

UI.Tabs = {}
UI.CurrentTab = nil

function UI:CreateTab(name)
    local Tab = {}
    
    local TabBtn = Instance.new("TextButton")
    TabBtn.Name = name
    TabBtn.Parent = Sidebar
    TabBtn.BackgroundColor3 = Colors.ElementBg
    TabBtn.BorderSizePixel = 0
    TabBtn.Size = UDim2.new(1, 0, 0, 30)
    TabBtn.Font = Enum.Font.Gotham
    TabBtn.Text = " " .. name
    TabBtn.TextColor3 = Colors.TextDim
    TabBtn.TextSize = 12
    TabBtn.TextXAlignment = Enum.TextXAlignment.Left
    
    local TabContent = Instance.new("ScrollingFrame")
    TabContent.Name = name .. "Content"
    TabContent.Parent = ContentArea
    TabContent.BackgroundColor3 = Colors.Background
    TabContent.BorderSizePixel = 0
    TabContent.Size = UDim2.new(1, 0, 1, 0)
    TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabContent.ScrollBarThickness = 3
    TabContent.ScrollBarImageColor3 = Colors.Primary
    TabContent.Visible = false
    
    local TabList = Instance.new("UIListLayout")
    TabList.Parent = TabContent
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 6)
    
    local TabPadding = Instance.new("UIPadding")
    TabPadding.Parent = TabContent
    TabPadding.PaddingTop = UDim.new(0, 8)
    TabPadding.PaddingLeft = UDim.new(0, 8)
    TabPadding.PaddingRight = UDim.new(0, 8)
    TabPadding.PaddingBottom = UDim.new(0, 8)
    
    TabList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabContent.CanvasSize = UDim2.new(0, 0, 0, TabList.AbsoluteContentSize.Y + 16)
    end)
    
    TabBtn.MouseButton1Click:Connect(function()
        for _, t in pairs(UI.Tabs) do
            t.Content.Visible = false
            t.Button.BackgroundColor3 = Colors.ElementBg
            t.Button.TextColor3 = Colors.TextDim
        end
        TabContent.Visible = true
        TabBtn.BackgroundColor3 = Colors.Primary
        TabBtn.TextColor3 = Colors.Text
    end)
    
    if #UI.Tabs == 0 then
        TabContent.Visible = true
        TabBtn.BackgroundColor3 = Colors.Primary
        TabBtn.TextColor3 = Colors.Text
    end
    
    Tab.Button = TabBtn
    Tab.Content = TabContent
    
    function Tab:AddLabel(text)
        local Label = Instance.new("TextLabel")
        Label.Parent = TabContent
        Label.BackgroundTransparency = 1
        Label.Size = UDim2.new(1, -8, 0, 20)
        Label.Font = Enum.Font.GothamBold
        Label.Text = text
        Label.TextColor3 = Colors.Primary
        Label.TextSize = 13
        Label.TextXAlignment = Enum.TextXAlignment.Left
        return Label
    end
    
    function Tab:AddButton(config)
        local BtnFrame = Instance.new("Frame")
        BtnFrame.Parent = TabContent
        BtnFrame.BackgroundColor3 = Colors.ElementBg
        BtnFrame.BorderSizePixel = 0
        BtnFrame.Size = UDim2.new(1, -8, 0, 32)
        
        local BtnCorner = Instance.new("UICorner")
        BtnCorner.CornerRadius = UDim.new(0, 5)
        BtnCorner.Parent = BtnFrame
        
        local Btn = Instance.new("TextButton")
        Btn.Parent = BtnFrame
        Btn.BackgroundTransparency = 1
        Btn.Size = UDim2.new(1, 0, 1, 0)
        Btn.Font = Enum.Font.Gotham
        Btn.Text = " " .. (config.Title or "Button")
        Btn.TextColor3 = Colors.Text
        Btn.TextSize = 12
        Btn.TextXAlignment = Enum.TextXAlignment.Left
        
        Btn.MouseButton1Click:Connect(function()
            if config.Callback then
                config.Callback()
            end
        end)
        
        return Btn
    end
    
    function Tab:AddToggle(config)
        local TogFrame = Instance.new("Frame")
        TogFrame.Parent = TabContent
        TogFrame.BackgroundColor3 = Colors.ElementBg
        TogFrame.BorderSizePixel = 0
        TogFrame.Size = UDim2.new(1, -8, 0, 32)
        
        local TogCorner = Instance.new("UICorner")
        TogCorner.CornerRadius = UDim.new(0, 5)
        TogCorner.Parent = TogFrame
        
        local TogLabel = Instance.new("TextLabel")
        TogLabel.Parent = TogFrame
        TogLabel.BackgroundTransparency = 1
        TogLabel.Position = UDim2.new(0, 8, 0, 0)
        TogLabel.Size = UDim2.new(1, -50, 1, 0)
        TogLabel.Font = Enum.Font.Gotham
        TogLabel.Text = config.Title or "Toggle"
        TogLabel.TextColor3 = Colors.Text
        TogLabel.TextSize = 12
        TogLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        -- SQUARE TOGGLE
        local TogBtn = Instance.new("Frame")
        TogBtn.Parent = TogFrame
        TogBtn.BackgroundColor3 = Colors.Primary
        TogBtn.BorderSizePixel = 0
        TogBtn.Position = UDim2.new(1, -35, 0.5, -12)
        TogBtn.Size = UDim2.new(0, 24, 0, 24)
        
        local TogBtnCorner = Instance.new("UICorner")
        TogBtnCorner.CornerRadius = UDim.new(0, 5)
        TogBtnCorner.Parent = TogBtn
        
        local Inner = Instance.new("Frame")
        Inner.Parent = TogBtn
        Inner.BackgroundColor3 = Colors.Background
        Inner.BorderSizePixel = 0
        Inner.Position = UDim2.new(0.5, 0, 0.5, 0)
        Inner.AnchorPoint = Vector2.new(0.5, 0.5)
        Inner.Size = UDim2.new(0, 19, 0, 19)
        
        local InnerCorner = Instance.new("UICorner")
        InnerCorner.CornerRadius = UDim.new(0, 4)
        InnerCorner.Parent = Inner
        
        local Check = Instance.new("Frame")
        Check.Parent = Inner
        Check.BackgroundColor3 = Colors.Primary
        Check.BorderSizePixel = 0
        Check.Position = UDim2.new(0.5, 0, 0.5, 0)
        Check.AnchorPoint = Vector2.new(0.5, 0.5)
        Check.Size = UDim2.new(0, 13, 0, 13)
        Check.BackgroundTransparency = 1
        
        local CheckCorner = Instance.new("UICorner")
        CheckCorner.CornerRadius = UDim.new(0, 3)
        CheckCorner.Parent = Check
        
        local isOn = config.Default or false
        
        local function Update(state, anim)
            isOn = state
            if anim then
                local tween = TweenService:Create(Check, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
                    BackgroundTransparency = state and 0 or 1
                })
                tween:Play()
            else
                Check.BackgroundTransparency = state and 0 or 1
            end
            if config.Callback then
                config.Callback(state)
            end
        end
        
        TogBtn.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Update(not isOn, true)
            end
        end)
        
        TogFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Update(not isOn, true)
            end
        end)
        
        Update(isOn, false)
        
        return {
            Set = function(_, val)
                Update(val, true)
            end
        }
    end
    
    function Tab:AddSlider(config)
        local SliderFrame = Instance.new("Frame")
        SliderFrame.Parent = TabContent
        SliderFrame.BackgroundColor3 = Colors.ElementBg
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Size = UDim2.new(1, -8, 0, 50)
        
        local SliderCorner = Instance.new("UICorner")
        SliderCorner.CornerRadius = UDim.new(0, 5)
        SliderCorner.Parent = SliderFrame
        
        local SliderLabel = Instance.new("TextLabel")
        SliderLabel.Parent = SliderFrame
        SliderLabel.BackgroundTransparency = 1
        SliderLabel.Position = UDim2.new(0, 8, 0, 4)
        SliderLabel.Size = UDim2.new(1, -16, 0, 16)
        SliderLabel.Font = Enum.Font.Gotham
        SliderLabel.Text = config.Title or "Slider"
        SliderLabel.TextColor3 = Colors.Text
        SliderLabel.TextSize = 12
        SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local ValueLabel = Instance.new("TextLabel")
        ValueLabel.Parent = SliderFrame
        ValueLabel.BackgroundTransparency = 1
        ValueLabel.Position = UDim2.new(1, -50, 0, 4)
        ValueLabel.Size = UDim2.new(0, 42, 0, 16)
        ValueLabel.Font = Enum.Font.GothamBold
        ValueLabel.Text = tostring(config.Default or 0)
        ValueLabel.TextColor3 = Colors.Primary
        ValueLabel.TextSize = 12
        ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
        
        local SliderBack = Instance.new("Frame")
        SliderBack.Parent = SliderFrame
        SliderBack.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
        SliderBack.BorderSizePixel = 0
        SliderBack.Position = UDim2.new(0, 8, 0, 28)
        SliderBack.Size = UDim2.new(1, -16, 0, 5)
        
        local SliderBackCorner = Instance.new("UICorner")
        SliderBackCorner.CornerRadius = UDim.new(1, 0)
        SliderBackCorner.Parent = SliderBack
        
        local SliderFill = Instance.new("Frame")
        SliderFill.Parent = SliderBack
        SliderFill.BackgroundColor3 = Colors.Primary
        SliderFill.BorderSizePixel = 0
        SliderFill.Size = UDim2.new(0, 0, 1, 0)
        
        local SliderFillCorner = Instance.new("UICorner")
        SliderFillCorner.CornerRadius = UDim.new(1, 0)
        SliderFillCorner.Parent = SliderFill
        
        local dragging = false
        local min = config.Min or 0
        local max = config.Max or 100
        local val = config.Default or 0
        
        local function UpdateSlider(value)
            value = math.clamp(value, min, max)
            val = value
            ValueLabel.Text = tostring(value)
            local pct = (value - min) / (max - min)
            SliderFill.Size = UDim2.new(pct, 0, 1, 0)
            if config.Callback then
                config.Callback(value)
            end
        end
        
        SliderBack.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
            end
        end)
        
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local mousePos = UserInputService:GetMouseLocation().X
                local sliderPos = SliderBack.AbsolutePosition.X
                local sliderSize = SliderBack.AbsoluteSize.X
                local pct = math.clamp((mousePos - sliderPos) / sliderSize, 0, 1)
                local value = math.floor(min + (max - min) * pct)
                UpdateSlider(value)
            end
        end)
        
        UpdateSlider(val)
        
        return {
            Set = function(_, value)
                UpdateSlider(value)
            end
        }
    end
    
    function Tab:AddDropdown(config)
        local DropFrame = Instance.new("Frame")
        DropFrame.Parent = TabContent
        DropFrame.BackgroundColor3 = Colors.ElementBg
        DropFrame.BorderSizePixel = 0
        DropFrame.Size = UDim2.new(1, -8, 0, 32)
        DropFrame.ClipsDescendants = false
        
        local DropCorner = Instance.new("UICorner")
        DropCorner.CornerRadius = UDim.new(0, 5)
        DropCorner.Parent = DropFrame
        
        local DropBtn = Instance.new("TextButton")
        DropBtn.Parent = DropFrame
        DropBtn.BackgroundTransparency = 1
        DropBtn.Size = UDim2.new(1, 0, 0, 32)
        DropBtn.Font = Enum.Font.Gotham
        DropBtn.Text = " " .. (config.Title or "Dropdown") .. ": " .. (config.Default or "None")
        DropBtn.TextColor3 = Colors.Text
        DropBtn.TextSize = 12
        DropBtn.TextXAlignment = Enum.TextXAlignment.Left
        
        local Arrow = Instance.new("TextLabel")
        Arrow.Parent = DropBtn
        Arrow.BackgroundTransparency = 1
        Arrow.Position = UDim2.new(1, -25, 0, 0)
        Arrow.Size = UDim2.new(0, 25, 1, 0)
        Arrow.Font = Enum.Font.GothamBold
        Arrow.Text = ">"
        Arrow.TextColor3 = Colors.Primary
        Arrow.TextSize = 12
        
        local DropList = Instance.new("Frame")
        DropList.Parent = DropFrame
        DropList.BackgroundColor3 = Colors.TabBg
        DropList.BorderSizePixel = 0
        DropList.Position = UDim2.new(0, 0, 0, 36)
        DropList.Size = UDim2.new(1, 0, 0, 0)
        DropList.Visible = false
        DropList.ZIndex = 10
        
        local DropListCorner = Instance.new("UICorner")
        DropListCorner.CornerRadius = UDim.new(0, 5)
        DropListCorner.Parent = DropList
        
        local DropListLayout = Instance.new("UIListLayout")
        DropListLayout.Parent = DropList
        DropListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        local isOpen = false
        local currentVal = config.Default or "None"
        
        for _, option in ipairs(config.Options or {}) do
            local OptBtn = Instance.new("TextButton")
            OptBtn.Parent = DropList
            OptBtn.BackgroundColor3 = Colors.ElementBg
            OptBtn.BorderSizePixel = 0
            OptBtn.Size = UDim2.new(1, 0, 0, 28)
            OptBtn.Font = Enum.Font.Gotham
            OptBtn.Text = " " .. option
            OptBtn.TextColor3 = Colors.Text
            OptBtn.TextSize = 11
            OptBtn.TextXAlignment = Enum.TextXAlignment.Left
            
            OptBtn.MouseButton1Click:Connect(function()
                currentVal = option
                DropBtn.Text = " " .. (config.Title or "Dropdown") .. ": " .. option
                DropList.Visible = false
                isOpen = false
                DropFrame.Size = UDim2.new(1, -8, 0, 32)
                if config.Callback then
                    config.Callback(option)
                end
            end)
        end
        
        DropBtn.MouseButton1Click:Connect(function()
            isOpen = not isOpen
            DropList.Visible = isOpen
            if isOpen then
                local h = #(config.Options or {}) * 28
                DropList.Size = UDim2.new(1, 0, 0, h)
                DropFrame.Size = UDim2.new(1, -8, 0, 32 + h + 4)
            else
                DropFrame.Size = UDim2.new(1, -8, 0, 32)
            end
        end)
        
        return {
            Set = function(_, val)
                currentVal = val
                DropBtn.Text = " " .. (config.Title or "Dropdown") .. ": " .. val
            end
        }
    end
    
    table.insert(UI.Tabs, Tab)
    return Tab
end

-- [CREATE TABS]
local TabInfo = UI:CreateTab("Thông Tin")
local TabFarm = UI:CreateTab("Farming")
local TabQuest = UI:CreateTab("Quest | Items")
local TabSea = UI:CreateTab("Sea Event")
local TabRace = UI:CreateTab("Race V4")
local TabRaid = UI:CreateTab("Raid")
local TabTele = UI:CreateTab("Teleport")
local TabShop = UI:CreateTab("Shop")
local TabSettings = UI:CreateTab("Settings")

-- TAB INFO
TabInfo:AddLabel("📊 Player Information")
spawn(function()
    local infoLabel = TabInfo:AddLabel("Loading...")
    while wait(1) do
        pcall(function()
            local level = plr.Data.Level.Value
            local beli = plr.Data.Beli.Value
            local frag = plr.Data.Fragments.Value
            infoLabel.Text = string.format("Level: %d | Beli: %d | Frag: %d", level, beli, frag)
        end)
    end
end)

-- TAB FARMING
TabFarm:AddLabel("⚔️ Select Weapon")
TabFarm:AddDropdown({
    Title = "Weapon Type",
    Options = {"Melee", "Sword", "Gun", "Blox Fruit"},
    Default = "Melee",
    Callback = function(val)
        _G.SelectWeapon = val
    end
})

TabFarm:AddLabel("🎯 Main Farm")
TabFarm:AddToggle({
    Title = "Auto Farm Level",
    Default = false,
    Callback = function(val)
        _G.AutoFarm = val
        StopTween(val)
    end
})

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local questTitle = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                CheckQuest()
                
                if not string.find(questTitle, NameMon) then
                    StartBring = false
                    RS.Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                
                if plr.PlayerGui.Main.Quest.Visible == true then
                    if WS.Enemies:FindFirstChild(Mon) then
                        for _, mob in pairs(WS.Enemies:GetChildren()) do
                            if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and mob.Name == Mon then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    PosMon = mob.HumanoidRootPart.CFrame
                                    topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    mob.HumanoidRootPart.CanCollide = false
                                    mob.Humanoid.WalkSpeed = 0
                                    mob.Head.CanCollide = false
                                    mob.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    StartBring = true
                                    MonFarm = mob.Name
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoFarm or mob.Humanoid.Health <= 0 or not mob.Parent or plr.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartBring = false
                    end
                else
                    TP1(CFrameQuest)
                    if (CFrameQuest.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(1)
                        RS.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                end
            end)
        end
    end
end)

TabFarm:AddLabel("📦 Material Farm")
TabFarm:AddDropdown({
    Title = "Select Material",
    Options = {
        "Angel Wings",
        "Mystic Droplet",
        "Vampire Fang",
        "Gunpowder",
        "Fish Tail",
        "Magma Ore",
        "Leather + Scrap Metal",
        "Radiactive Material",
        "Conjured Cocoa"
    },
    Default = "Angel Wings",
    Callback = function(val)
        _G.SelectMaterial = val
        MaterialMon()
    end
})

TabFarm:AddToggle({
    Title = "Auto Farm Material",
    Default = false,
    Callback = function(val)
        _G.AutoFarmMaterial = val
    end
})

spawn(function()
    while wait() do
        if _G.AutoFarmMaterial then
            pcall(function()
                MaterialMon()
                if WS.Enemies:FindFirstChild(MMon) then
                    for _, mob in pairs(WS.Enemies:GetChildren()) do
                        if mob.Name == MMon and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                mob.HumanoidRootPart.CanCollide = false
                                mob.Humanoid.WalkSpeed = 0
                                mob.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoFarmMaterial or mob.Humanoid.Health <= 0 or not mob.Parent
                        end
                    end
                else
                    TP1(MPos)
                end
            end)
        end
    end
end)

-- TAB SEA EVENT
TabSea:AddLabel("🌊 Sea Travel")
TabSea:AddButton({
    Title = "Join Sea 1",
    Callback = function()
        RS.Remotes.CommF_:InvokeServer("TravelMain")
    end
})

TabSea:AddButton({
    Title = "Join Sea 2",
    Callback = function()
        RS.Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

TabSea:AddButton({
    Title = "Join Sea 3",
    Callback = function()
        RS.Remotes.CommF_:InvokeServer("TravelZou")
    end
})

TabSea:AddLabel("⚙️ Other")
TabSea:AddButton({
    Title = "Join Pirates Team",
    Callback = function()
        RS.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})

TabSea:AddButton({
    Title = "Join Marines Team",
    Callback = function()
        RS.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})

-- TAB SETTINGS
TabSettings:AddLabel("⚙️ Game Settings")
TabSettings:AddSlider({
    Title = "Walk Speed",
    Min = 16,
    Max = 500,
    Default = 16,
    Callback = function(val)
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.WalkSpeed = val
        end
    end
})

TabSettings:AddSlider({
    Title = "Jump Power",
    Min = 50,
    Max = 500,
    Default = 50,
    Callback = function(val)
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.JumpPower = val
        end
    end
})

TabSettings:AddButton({
    Title = "FPS Boost",
    Callback = function()
        settings().Rendering.QualityLevel = "Level01"
        for _, obj in pairs(game:GetDescendants()) do
            if obj:IsA("Part") or obj:IsA("Union") or obj:IsA("CornerWedgePart") or obj:IsA("TrussPart") then
                obj.Material = "Plastic"
                obj.Reflectance = 0
            elseif obj:IsA("Decal") or obj:IsA("Texture") then
                obj.Transparency = 1
            elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
                obj.Lifetime = NumberRange.new(0)
            elseif obj:IsA("Fire") or obj:IsA("SpotLight") or obj:IsA("Smoke") then
                obj.Enabled = false
            end
        end
    end
})

-- Notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "✅ HDANH HUB";
    Text = "Loaded successfully!\nSquare Pink Toggles";
    Duration = 5;
})

print("✅ HDANH HUB - Compact UI Loaded")
