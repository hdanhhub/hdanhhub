-- HDANH HUB - BLOX FRUITS
-- Custom UI từ đầu - Không dùng library bên ngoài
-- Toggle hình vuông bo tròn màu hồng

hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)

-- Kiểm tra game Blox Fruits
if game.PlaceId == 2753915549 then
    World1 = true
    print("🌊 Sea 1 - First Sea")
elseif game.PlaceId == 4442272183 then
    World2 = true
    print("🌊 Sea 2 - Second Sea")
elseif game.PlaceId == 7449423635 then
    World3 = true
    print("🌊 Sea 3 - Third Sea")
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "❌ Lỗi!";
        Text = "Script chỉ hoạt động trong Blox Fruits!";
        Duration = 5;
    })
    wait(3)
    error("Không phải game Blox Fruits!")
end

-- [GAME LOGIC FUNCTIONS]
function MaterialMon()
    if _G.SelectMaterial ~= "Radiactive Material" then
        if _G.SelectMaterial ~= "Leather + Scrap Metal" then
            if _G.SelectMaterial ~= "Magma Ore" then
                if _G.SelectMaterial ~= "Fish Tail" then
                    if _G.SelectMaterial == "Angel Wings" then
                        MMon = "Royal Soldier"
                        MPos = CFrame.new(-7759.45898, 5606.93652, -1862.70276, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)
                        SP = "SkyArea2"
                    elseif _G.SelectMaterial == "Mystic Droplet" then
                        MMon = "Water Fighter"
                        MPos = CFrame.new(-3331.70459, 239.138336, -10553.3564, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146)
                        SP = "ForgottenIsland"
                    elseif _G.SelectMaterial == "Vampire Fang" then
                        MMon = "Vampire"
                        MPos = CFrame.new(-6132.39453, 9.00769424, -1466.16919, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.927179813)
                        SP = "Graveyard"
                    elseif _G.SelectMaterial == "Gunpowder" then
                        MMon = "Pistol Billionaire"
                        MPos = CFrame.new(-185.693283, 84.7088699, 6103.62744, 0.90629667, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, 0.90629667)
                        SP = "Mansion"
                    elseif _G.SelectMaterial == "Conjured Cocoa" then
                        MMon = "Chocolate Bar Battler"
                        MPos = CFrame.new(582.828674, 25.5824986, -12550.7041, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
                        SP = "Chocolate"
                    end
                elseif game.PlaceId == 2753915549 then
                    MMon = "Fishman Warrior"
                    MPos = CFrame.new(60943.9023, 17.9492188, 1744.11133, 0.826706648, 0, -0.562633216, 0, 1, 0, 0.562633216, 0, 0.826706648)
                    SP = "Underwater City"
                end
            elseif game.PlaceId == 2753915549 then
                MMon = "Military Soldier"
                MPos = CFrame.new(-5565.60156, 9.10001755, 8327.56934, -0.838688731, 0, -0.544611216, 0, 1, 0, 0.544611216, 0, -0.838688731)
                SP = "Magma"
            end
        else
            MMon = "Pirate"
            MPos = CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
            SP = "Pirate"
        end
    else
        MMon = "Factory Staff"
        MPos = CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
        SP = "Bar"
    end
end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231)
            CFrameMon = CFrame.new(1045.96, 27.00, 1560.82)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            CFrameMon = CFrame.new(-1448.51, 67.85, 11.46)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-746.8055419921875, 39.68501281738281, 2390.7880859375)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5579.9824)
            CFrameMon = CFrame.new(-289.6311950683594, 43.8282470703125, 5607.611328125)
        end
    end
end

-- [CUSTOM UI LIBRARY - TỰ TẠO]
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Library = {}
Library.__index = Library

-- Colors
local Colors = {
    Primary = Color3.fromRGB(255, 105, 180),      -- Hot Pink
    Secondary = Color3.fromRGB(255, 182, 193),    -- Light Pink
    Background = Color3.fromRGB(20, 20, 25),      -- Dark
    TabBg = Color3.fromRGB(25, 25, 30),
    ElementBg = Color3.fromRGB(30, 30, 35),
    Text = Color3.fromRGB(255, 255, 255),
    TextDim = Color3.fromRGB(180, 180, 180),
    Border = Color3.fromRGB(40, 40, 45)
}

function Library:CreateWindow(config)
    local Window = {}
    
    -- Main ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HDANH_HUB"
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
    
    -- Main Container
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Colors.Background
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, -400, 0.5, -250)
    Main.Size = UDim2.new(0, 800, 0, 500)
    Main.Active = true
    Main.Draggable = true
    Main.ClipsDescendants = true
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = Main
    
    -- Title Bar
    local TitleBar = Instance.new("Frame")
    TitleBar.Name = "TitleBar"
    TitleBar.Parent = Main
    TitleBar.BackgroundColor3 = Colors.Primary
    TitleBar.BorderSizePixel = 0
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    
    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 10)
    TitleCorner.Parent = TitleBar
    
    local TitleFix = Instance.new("Frame")
    TitleFix.Parent = TitleBar
    TitleFix.BackgroundColor3 = Colors.Primary
    TitleFix.BorderSizePixel = 0
    TitleFix.Position = UDim2.new(0, 0, 1, -10)
    TitleFix.Size = UDim2.new(1, 0, 0, 10)
    
    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = TitleBar
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.Size = UDim2.new(1, -60, 1, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = config.Title or "HDANH HUB"
    Title.TextColor3 = Colors.Text
    Title.TextSize = 18
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Close Button
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Name = "CloseBtn"
    CloseBtn.Parent = TitleBar
    CloseBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 100)
    CloseBtn.BorderSizePixel = 0
    CloseBtn.Position = UDim2.new(1, -35, 0.5, -12)
    CloseBtn.Size = UDim2.new(0, 24, 0, 24)
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.Text = "×"
    CloseBtn.TextColor3 = Colors.Text
    CloseBtn.TextSize = 18
    
    local CloseBtnCorner = Instance.new("UICorner")
    CloseBtnCorner.CornerRadius = UDim.new(0, 5)
    CloseBtnCorner.Parent = CloseBtn
    
    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
    
    -- Sidebar (Tabs Container)
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = Main
    Sidebar.BackgroundColor3 = Colors.TabBg
    Sidebar.BorderSizePixel = 0
    Sidebar.Position = UDim2.new(0, 0, 0, 40)
    Sidebar.Size = UDim2.new(0, 180, 1, -40)
    
    local SidebarList = Instance.new("UIListLayout")
    SidebarList.Parent = Sidebar
    SidebarList.SortOrder = Enum.SortOrder.LayoutOrder
    SidebarList.Padding = UDim.new(0, 2)
    
    -- Content Area
    local ContentArea = Instance.new("Frame")
    ContentArea.Name = "ContentArea"
    ContentArea.Parent = Main
    ContentArea.BackgroundColor3 = Colors.Background
    ContentArea.BorderSizePixel = 0
    ContentArea.Position = UDim2.new(0, 180, 0, 40)
    ContentArea.Size = UDim2.new(1, -180, 1, -40)
    
    Window.Tabs = {}
    Window.CurrentTab = nil
    
    function Window:AddTab(config)
        local Tab = {}
        local tabName = config.Title or "Tab"
        
        -- Tab Button in Sidebar
        local TabButton = Instance.new("TextButton")
        TabButton.Name = tabName
        TabButton.Parent = Sidebar
        TabButton.BackgroundColor3 = Colors.ElementBg
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(1, 0, 0, 35)
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = "  " .. tabName
        TabButton.TextColor3 = Colors.TextDim
        TabButton.TextSize = 14
        TabButton.TextXAlignment = Enum.TextXAlignment.Left
        
        -- Tab Content Container
        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Name = tabName .. "Content"
        TabContent.Parent = ContentArea
        TabContent.Active = true
        TabContent.BackgroundColor3 = Colors.Background
        TabContent.BorderSizePixel = 0
        TabContent.Size = UDim2.new(1, 0, 1, 0)
        TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabContent.ScrollBarThickness = 4
        TabContent.ScrollBarImageColor3 = Colors.Primary
        TabContent.Visible = false
        
        local TabContentList = Instance.new("UIListLayout")
        TabContentList.Parent = TabContent
        TabContentList.SortOrder = Enum.SortOrder.LayoutOrder
        TabContentList.Padding = UDim.new(0, 8)
        
        local TabContentPadding = Instance.new("UIPadding")
        TabContentPadding.Parent = TabContent
        TabContentPadding.PaddingTop = UDim.new(0, 10)
        TabContentPadding.PaddingLeft = UDim.new(0, 10)
        TabContentPadding.PaddingRight = UDim.new(0, 10)
        TabContentPadding.PaddingBottom = UDim.new(0, 10)
        
        -- Auto-resize canvas
        TabContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.CanvasSize = UDim2.new(0, 0, 0, TabContentList.AbsoluteContentSize.Y + 20)
        end)
        
        TabButton.MouseButton1Click:Connect(function()
            -- Hide all tabs
            for _, tab in pairs(Window.Tabs) do
                tab.Content.Visible = false
                tab.Button.BackgroundColor3 = Colors.ElementBg
                tab.Button.TextColor3 = Colors.TextDim
            end
            
            -- Show this tab
            TabContent.Visible = true
            TabButton.BackgroundColor3 = Colors.Primary
            TabButton.TextColor3 = Colors.Text
            Window.CurrentTab = Tab
        end)
        
        -- Show first tab by default
        if #Window.Tabs == 0 then
            TabContent.Visible = true
            TabButton.BackgroundColor3 = Colors.Primary
            TabButton.TextColor3 = Colors.Text
            Window.CurrentTab = Tab
        end
        
        Tab.Button = TabButton
        Tab.Content = TabContent
        Tab.Elements = {}
        
        -- ADD LABEL
        function Tab:AddLabel(config)
            local Label = Instance.new("TextLabel")
            Label.Name = "Label"
            Label.Parent = TabContent
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(1, -10, 0, 25)
            Label.Font = Enum.Font.GothamBold
            Label.Text = config.Text or "Label"
            Label.TextColor3 = Colors.Primary
            Label.TextSize = 16
            Label.TextXAlignment = Enum.TextXAlignment.Left
            
            return Label
        end
        
        -- ADD BUTTON
        function Tab:AddButton(config)
            local ButtonContainer = Instance.new("Frame")
            ButtonContainer.Name = "ButtonContainer"
            ButtonContainer.Parent = TabContent
            ButtonContainer.BackgroundColor3 = Colors.ElementBg
            ButtonContainer.BorderSizePixel = 0
            ButtonContainer.Size = UDim2.new(1, -10, 0, 40)
            
            local ButtonCorner = Instance.new("UICorner")
            ButtonCorner.CornerRadius = UDim.new(0, 6)
            ButtonCorner.Parent = ButtonContainer
            
            local Button = Instance.new("TextButton")
            Button.Name = "Button"
            Button.Parent = ButtonContainer
            Button.BackgroundTransparency = 1
            Button.Size = UDim2.new(1, 0, 1, 0)
            Button.Font = Enum.Font.Gotham
            Button.Text = "  " .. (config.Title or "Button")
            Button.TextColor3 = Colors.Text
            Button.TextSize = 14
            Button.TextXAlignment = Enum.TextXAlignment.Left
            
            Button.MouseButton1Click:Connect(function()
                if config.Callback then
                    config.Callback()
                end
            end)
            
            return Button
        end
        
        -- ADD TOGGLE (HÌNH VUÔNG BO TRÒN MÀU HỒNG)
        function Tab:AddToggle(config)
            local ToggleContainer = Instance.new("Frame")
            ToggleContainer.Name = "ToggleContainer"
            ToggleContainer.Parent = TabContent
            ToggleContainer.BackgroundColor3 = Colors.ElementBg
            ToggleContainer.BorderSizePixel = 0
            ToggleContainer.Size = UDim2.new(1, -10, 0, 40)
            
            local ToggleCorner = Instance.new("UICorner")
            ToggleCorner.CornerRadius = UDim.new(0, 6)
            ToggleCorner.Parent = ToggleContainer
            
            local ToggleLabel = Instance.new("TextLabel")
            ToggleLabel.Name = "ToggleLabel"
            ToggleLabel.Parent = ToggleContainer
            ToggleLabel.BackgroundTransparency = 1
            ToggleLabel.Position = UDim2.new(0, 10, 0, 0)
            ToggleLabel.Size = UDim2.new(1, -60, 1, 0)
            ToggleLabel.Font = Enum.Font.Gotham
            ToggleLabel.Text = config.Title or "Toggle"
            ToggleLabel.TextColor3 = Colors.Text
            ToggleLabel.TextSize = 14
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            -- TOGGLE VUÔNG BO TRÒN
            local ToggleButton = Instance.new("Frame")
            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = ToggleContainer
            ToggleButton.BackgroundColor3 = Colors.Primary
            ToggleButton.BorderSizePixel = 0
            ToggleButton.Position = UDim2.new(1, -45, 0.5, -15)
            ToggleButton.Size = UDim2.new(0, 30, 0, 30)
            
            local ToggleButtonCorner = Instance.new("UICorner")
            ToggleButtonCorner.CornerRadius = UDim.new(0, 6)
            ToggleButtonCorner.Parent = ToggleButton
            
            -- Inner square (check mark)
            local InnerSquare = Instance.new("Frame")
            InnerSquare.Name = "InnerSquare"
            InnerSquare.Parent = ToggleButton
            InnerSquare.BackgroundColor3 = Colors.Background
            InnerSquare.BorderSizePixel = 0
            InnerSquare.Position = UDim2.new(0.5, 0, 0.5, 0)
            InnerSquare.AnchorPoint = Vector2.new(0.5, 0.5)
            InnerSquare.Size = UDim2.new(0, 24, 0, 24)
            
            local InnerCorner = Instance.new("UICorner")
            InnerCorner.CornerRadius = UDim.new(0, 4)
            InnerCorner.Parent = InnerSquare
            
            -- Check mark (fill when ON)
            local CheckMark = Instance.new("Frame")
            CheckMark.Name = "CheckMark"
            CheckMark.Parent = InnerSquare
            CheckMark.BackgroundColor3 = Colors.Primary
            CheckMark.BorderSizePixel = 0
            CheckMark.Position = UDim2.new(0.5, 0, 0.5, 0)
            CheckMark.AnchorPoint = Vector2.new(0.5, 0.5)
            CheckMark.Size = UDim2.new(0, 16, 0, 16)
            CheckMark.BackgroundTransparency = 1  -- OFF initially
            
            local CheckCorner = Instance.new("UICorner")
            CheckCorner.CornerRadius = UDim.new(0, 3)
            CheckCorner.Parent = CheckMark
            
            local isToggled = config.Default or false
            
            local function UpdateToggle(state, animate)
                isToggled = state
                
                if animate then
                    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local tween = TweenService:Create(CheckMark, tweenInfo, {
                        BackgroundTransparency = state and 0 or 1
                    })
                    tween:Play()
                else
                    CheckMark.BackgroundTransparency = state and 0 or 1
                end
                
                if config.Callback then
                    config.Callback(state)
                end
            end
            
            ToggleButton.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    UpdateToggle(not isToggled, true)
                end
            end)
            
            ToggleContainer.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    UpdateToggle(not isToggled, true)
                end
            end)
            
            UpdateToggle(isToggled, false)
            
            local ToggleObj = {}
            function ToggleObj:Set(value)
                UpdateToggle(value, true)
            end
            
            return ToggleObj
        end
        
        -- ADD SLIDER
        function Tab:AddSlider(config)
            local SliderContainer = Instance.new("Frame")
            SliderContainer.Name = "SliderContainer"
            SliderContainer.Parent = TabContent
            SliderContainer.BackgroundColor3 = Colors.ElementBg
            SliderContainer.BorderSizePixel = 0
            SliderContainer.Size = UDim2.new(1, -10, 0, 60)
            
            local SliderCorner = Instance.new("UICorner")
            SliderCorner.CornerRadius = UDim.new(0, 6)
            SliderCorner.Parent = SliderContainer
            
            local SliderLabel = Instance.new("TextLabel")
            SliderLabel.Name = "SliderLabel"
            SliderLabel.Parent = SliderContainer
            SliderLabel.BackgroundTransparency = 1
            SliderLabel.Position = UDim2.new(0, 10, 0, 5)
            SliderLabel.Size = UDim2.new(1, -20, 0, 20)
            SliderLabel.Font = Enum.Font.Gotham
            SliderLabel.Text = config.Title or "Slider"
            SliderLabel.TextColor3 = Colors.Text
            SliderLabel.TextSize = 14
            SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            
            local ValueLabel = Instance.new("TextLabel")
            ValueLabel.Name = "ValueLabel"
            ValueLabel.Parent = SliderContainer
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.Position = UDim2.new(1, -60, 0, 5)
            ValueLabel.Size = UDim2.new(0, 50, 0, 20)
            ValueLabel.Font = Enum.Font.GothamBold
            ValueLabel.Text = tostring(config.Default or 0)
            ValueLabel.TextColor3 = Colors.Primary
            ValueLabel.TextSize = 14
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
            
            local SliderBack = Instance.new("Frame")
            SliderBack.Name = "SliderBack"
            SliderBack.Parent = SliderContainer
            SliderBack.BackgroundColor3 = Colors.Border
            SliderBack.BorderSizePixel = 0
            SliderBack.Position = UDim2.new(0, 10, 0, 35)
            SliderBack.Size = UDim2.new(1, -20, 0, 6)
            
            local SliderBackCorner = Instance.new("UICorner")
            SliderBackCorner.CornerRadius = UDim.new(1, 0)
            SliderBackCorner.Parent = SliderBack
            
            local SliderFill = Instance.new("Frame")
            SliderFill.Name = "SliderFill"
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
            local default = config.Default or 0
            local currentValue = default
            
            local function UpdateSlider(value)
                value = math.clamp(value, min, max)
                currentValue = value
                ValueLabel.Text = tostring(value)
                
                local percent = (value - min) / (max - min)
                SliderFill.Size = UDim2.new(percent, 0, 1, 0)
                
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
                    local percent = math.clamp((mousePos - sliderPos) / sliderSize, 0, 1)
                    local value = math.floor(min + (max - min) * percent)
                    UpdateSlider(value)
                end
            end)
            
            UpdateSlider(default)
            
            return {
                Set = function(self, value)
                    UpdateSlider(value)
                end
            }
        end
        
        -- ADD DROPDOWN
        function Tab:AddDropdown(config)
            local DropdownContainer = Instance.new("Frame")
            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = TabContent
            DropdownContainer.BackgroundColor3 = Colors.ElementBg
            DropdownContainer.BorderSizePixel = 0
            DropdownContainer.Size = UDim2.new(1, -10, 0, 40)
            DropdownContainer.ClipsDescendants = false
            
            local DropdownCorner = Instance.new("UICorner")
            DropdownCorner.CornerRadius = UDim.new(0, 6)
            DropdownCorner.Parent = DropdownContainer
            
            local DropdownButton = Instance.new("TextButton")
            DropdownButton.Name = "DropdownButton"
            DropdownButton.Parent = DropdownContainer
            DropdownButton.BackgroundTransparency = 1
            DropdownButton.Size = UDim2.new(1, 0, 0, 40)
            DropdownButton.Font = Enum.Font.Gotham
            DropdownButton.Text = "  " .. (config.Title or "Dropdown") .. ": " .. (config.Default or "None")
            DropdownButton.TextColor3 = Colors.Text
            DropdownButton.TextSize = 14
            DropdownButton.TextXAlignment = Enum.TextXAlignment.Left
            
            local Arrow = Instance.new("TextLabel")
            Arrow.Parent = DropdownButton
            Arrow.BackgroundTransparency = 1
            Arrow.Position = UDim2.new(1, -30, 0, 0)
            Arrow.Size = UDim2.new(0, 30, 1, 0)
            Arrow.Font = Enum.Font.GothamBold
            Arrow.Text = ">"
            Arrow.TextColor3 = Colors.Primary
            Arrow.TextSize = 14
            
            local DropdownList = Instance.new("Frame")
            DropdownList.Name = "DropdownList"
            DropdownList.Parent = DropdownContainer
            DropdownList.BackgroundColor3 = Colors.TabBg
            DropdownList.BorderSizePixel = 0
            DropdownList.Position = UDim2.new(0, 0, 0, 45)
            DropdownList.Size = UDim2.new(1, 0, 0, 0)
            DropdownList.Visible = false
            DropdownList.ZIndex = 10
            
            local DropdownListCorner = Instance.new("UICorner")
            DropdownListCorner.CornerRadius = UDim.new(0, 6)
            DropdownListCorner.Parent = DropdownList
            
            local DropdownListLayout = Instance.new("UIListLayout")
            DropdownListLayout.Parent = DropdownList
            DropdownListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local isOpen = false
            local currentValue = config.Default or "None"
            
            for _, option in ipairs(config.Options or {}) do
                local OptionButton = Instance.new("TextButton")
                OptionButton.Name = option
                OptionButton.Parent = DropdownList
                OptionButton.BackgroundColor3 = Colors.ElementBg
                OptionButton.BorderSizePixel = 0
                OptionButton.Size = UDim2.new(1, 0, 0, 35)
                OptionButton.Font = Enum.Font.Gotham
                OptionButton.Text = "  " .. option
                OptionButton.TextColor3 = Colors.Text
                OptionButton.TextSize = 13
                OptionButton.TextXAlignment = Enum.TextXAlignment.Left
                
                OptionButton.MouseButton1Click:Connect(function()
                    currentValue = option
                    DropdownButton.Text = "  " .. (config.Title or "Dropdown") .. ": " .. option
                    DropdownList.Visible = false
                    isOpen = false
                    DropdownContainer.Size = UDim2.new(1, -10, 0, 40)
                    
                    if config.Callback then
                        config.Callback(option)
                    end
                end)
            end
            
            DropdownButton.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                DropdownList.Visible = isOpen
                
                if isOpen then
                    local listHeight = #(config.Options or {}) * 35
                    DropdownList.Size = UDim2.new(1, 0, 0, listHeight)
                    DropdownContainer.Size = UDim2.new(1, -10, 0, 40 + listHeight + 5)
                else
                    DropdownContainer.Size = UDim2.new(1, -10, 0, 40)
                end
            end)
            
            return {
                Set = function(self, value)
                    currentValue = value
                    DropdownButton.Text = "  " .. (config.Title or "Dropdown") .. ": " .. value
                end
            }
        end
        
        table.insert(Window.Tabs, Tab)
        return Tab
    end
    
    return Window
end

-- [TẠO UI]
local Window = Library:CreateWindow({
    Title = "HDANH HUB - Blox Fruits"
})

-- TAB: Shop
local ShopTab = Window:AddTab({Title = "Shop"})
ShopTab:AddLabel({Text = "🛒 Shop Features"})
ShopTab:AddButton({
    Title = "Open Devil Fruit Shop",
    Callback = function()
        print("Opening fruit shop...")
    end
})

-- TAB: Status And Server
local StatusTab = Window:AddTab({Title = "Status And Server"})
StatusTab:AddLabel({Text = "📊 Player Information"})

-- TAB: LocalPlayer
local LocalTab = Window:AddTab({Title = "LocalPlayer"})
LocalTab:AddLabel({Text = "👤 Local Player Settings"})
LocalTab:AddSlider({
    Title = "Walk Speed",
    Min = 16,
    Max = 500,
    Default = 16,
    Callback = function(value)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

-- TAB: Setting Auto Faint
local FaintTab = Window:AddTab({Title = "Setting Auto Faint"})
FaintTab:AddLabel({Text = "⚙️ Auto Respawn Settings"})

-- TAB: Hold and Select Skill
local SkillTab = Window:AddTab({Title = "Hold and Select Skill"})
SkillTab:AddLabel({Text = "🎯 Skill Management"})

-- TAB: Farming (CHÍNH - GIỐNG ẢNH)
local FarmingTab = Window:AddTab({Title = "Farming"})
FarmingTab:AddLabel({Text = "Setting Farm"})

FarmingTab:AddDropdown({
    Title = "Select Method Farm",
    Options = {"Aura Farm", "Fast Attack", "Normal Farm", "Bring Mob"},
    Default = "Aura Farm",
    Callback = function(value)
        _G.SelectFarmMethod = value
        print("Farm Method:", value)
    end
})

FarmingTab:AddSlider({
    Title = "Distance Farm Auto",
    Min = 0,
    Max = 500,
    Default = 300,
    Callback = function(value)
        _G.DistanceFarm = value
        print("Distance:", value)
    end
})

FarmingTab:AddToggle({
    Title = "Ignore Attack Katakuri",
    Default = false,
    Callback = function(value)
        _G.IgnoreAttackKatakuri = value
        print("Ignore Katakuri:", value)
    end
})

FarmingTab:AddToggle({
    Title = "Hop Find Katakuri",
    Default = false,
    Callback = function(value)
        _G.HopFindKatakuri = value
        print("Hop Find Katakuri:", value)
    end
})

FarmingTab:AddToggle({
    Title = "Auto Quest [Katakuri/demon/Pyran]",
    Default = false,
    Callback = function(value)
        _G.AutoQuestKatakuri = value
        print("Auto Quest:", value)
    end
})

FarmingTab:AddToggle({
    Title = "Start Farm",
    Default = false,
    Callback = function(value)
        _G.StartFarm = value
        print("Start Farm:", value)
        
        if value then
            spawn(function()
                while _G.StartFarm do
                    wait(0.1)
                    pcall(function()
                        CheckQuest()
                        -- Thêm logic farm ở đây
                    end)
                end
            end)
        end
    end
})

FarmingTab:AddButton({
    Title = "Mastery Farm",
    Callback = function()
        _G.MasteryFarm = not _G.MasteryFarm
        print("Mastery Farm:", _G.MasteryFarm)
    end
})

-- TAB: Stack Farming
local StackTab = Window:AddTab({Title = "Stack Farming"})
StackTab:AddLabel({Text = "📦 Stack Farming"})

-- TAB: Farming Other
local OtherTab = Window:AddTab({Title = "Farming Other"})
OtherTab:AddLabel({Text = "🎁 Material Farm"})

OtherTab:AddDropdown({
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
    Callback = function(value)
        _G.SelectMaterial = value
        MaterialMon()
        print("Selected Material:", value)
    end
})

OtherTab:AddToggle({
    Title = "Auto Farm Material",
    Default = false,
    Callback = function(value)
        _G.AutoFarmMaterial = value
        
        if value then
            spawn(function()
                while _G.AutoFarmMaterial do
                    wait(0.1)
                    pcall(function()
                        MaterialMon()
                        -- Logic farm material
                    end)
                end
            end)
        end
    end
})

-- TAB: Fruit and Raid
local FruitTab = Window:AddTab({Title = "Fruit and Raid"})
FruitTab:AddLabel({Text = "🍎 Fruit & Raid Management"})

-- TAB: Sea Event
local SeaTab = Window:AddTab({Title = "Sea Event"})
SeaTab:AddLabel({Text = "🌊 Sea Travel"})

SeaTab:AddButton({
    Title = "Join Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

SeaTab:AddButton({
    Title = "Join Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

SeaTab:AddButton({
    Title = "Join Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

SeaTab:AddLabel({Text = "⚙️ Other"})

SeaTab:AddButton({
    Title = "Join Pirates Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})

SeaTab:AddButton({
    Title = "Join Marines Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})

-- Notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "✅ HDANH HUB";
    Text = "Script loaded successfully!\nCustom UI with Pink Square Toggles";
    Duration = 5;
})

print("✅ HDANH HUB Loaded - Custom UI")
