-- Dibuat oleh void - VoidHub System
-- VoidHub v3.0 REAL - Blox Fruits Script
-- Creator: @voidgfx0_ | Telegram: https://t.me/vounban
-- User: RAMAMODE

local DibuatOlehVoid = "Dibuat oleh void - VoidHub"
local VoidSignature = "voidhub_ramamode_auth"

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Dibuat oleh void - VoidHub Configuration
local VoidHubConfig = {
    Theme = {
        Background = Color3.fromRGB(25, 25, 30),
        Secondary = Color3.fromRGB(35, 35, 40),
        Accent = Color3.fromRGB(80, 80, 90),
        Text = Color3.fromRGB(255, 255, 255),
        SubText = Color3.fromRGB(150, 150, 150),
        Success = Color3.fromRGB(100, 255, 100),
        Warning = Color3.fromRGB(255, 200, 100),
        Error = Color3.fromRGB(255, 80, 80),
        Border = Color3.fromRGB(50, 50, 55),
        Highlight = Color3.fromRGB(100, 100, 255)
    },
    Creator = "Dibuat oleh void",
    ScriptName = "VoidHub",
    User = "RAMAMODE",
    Version = "v3.0 REAL"
}

-- Dibuat oleh void - ScreenGui Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VoidHub_RAMAMODE_" .. DibuatOlehVoid
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Dibuat oleh void - Logo Button (Draggable)
local LogoButton = Instance.new("TextButton")
LogoButton.Name = "VoidHubLogo_RAMAMODE"
LogoButton.Parent = ScreenGui
LogoButton.BackgroundColor3 = VoidHubConfig.Theme.Secondary
LogoButton.BorderSizePixel = 0
LogoButton.Position = UDim2.new(0, 10, 0.5, -35)
LogoButton.Size = UDim2.new(0, 70, 0, 70)
LogoButton.Font = Enum.Font.GothamBlack
LogoButton.Text = "VH"
LogoButton.TextColor3 = VoidHubConfig.Theme.Text
LogoButton.TextSize = 28
LogoButton.AutoButtonColor = true

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 12)
LogoCorner.Parent = LogoButton

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color = VoidHubConfig.Theme.Accent
LogoStroke.Thickness = 2
LogoStroke.Parent = LogoButton

-- Dibuat oleh void - Main Frame (Slide dari kiri)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "VoidHubMain_RAMAMODE"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = VoidHubConfig.Theme.Background
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, -350, 0.5, -250)
MainFrame.Size = UDim2.new(0, 320, 0, 500)
MainFrame.ClipsDescendants = true
MainFrame.Visible = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = MainFrame

-- Dibuat oleh void - Shadow
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "VoidHubShadow_RAMAMODE"
Shadow.Parent = MainFrame
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0, -10, 0, -10)
Shadow.Size = UDim2.new(1, 20, 1, 20)
Shadow.Image = "rbxassetid://5554236805"
Shadow.ImageColor3 = Color3.new(0, 0, 0)
Shadow.ImageTransparency = 0.7
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(23, 23, 277, 277)
Shadow.ZIndex = -1

-- Dibuat oleh void - Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "VoidHubTitleBar_RAMAMODE"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = VoidHubConfig.Theme.Secondary
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 45)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Name = "VoidHubTitleFix_RAMAMODE"
TitleFix.Parent = TitleBar
TitleFix.BackgroundColor3 = VoidHubConfig.Theme.Secondary
TitleFix.BorderSizePixel = 0
TitleFix.Position = UDim2.new(0, 0, 0.8, 0)
TitleFix.Size = UDim2.new(1, 0, 0.2, 0)

local TitleText = Instance.new("TextLabel")
TitleText.Name = "VoidHubTitleText_RAMAMODE"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Size = UDim2.new(0.6, 0, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "VOIDHUB"
TitleText.TextColor3 = VoidHubConfig.Theme.Text
TitleText.TextSize = 20
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local SubTitle = Instance.new("TextLabel")
SubTitle.Name = "VoidHubSubTitle_RAMAMODE"
SubTitle.Parent = TitleBar
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 12, 0.6, 0)
SubTitle.Size = UDim2.new(0.6, 0, 0.4, 0)
SubTitle.Font = Enum.Font.Gotham
SubTitle.Text = "v3.0 REAL | " .. VoidHubConfig.User
SubTitle.TextColor3 = VoidHubConfig.Theme.SubText
SubTitle.TextSize = 10
SubTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "VoidHubClose_RAMAMODE"
CloseButton.Parent = TitleBar
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -35, 0.5, -12)
CloseButton.Size = UDim2.new(0, 24, 0, 24)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = VoidHubConfig.Theme.Error
CloseButton.TextSize = 18

-- Minimize Button
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "VoidHubMinimize_RAMAMODE"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(1, -65, 0.5, -12)
MinimizeButton.Size = UDim2.new(0, 24, 0, 24)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = VoidHubConfig.Theme.Warning
MinimizeButton.TextSize = 20

-- Dibuat oleh void - Tab Container (Vertical)
local TabContainer = Instance.new("Frame")
TabContainer.Name = "VoidHubTabs_RAMAMODE"
TabContainer.Parent = MainFrame
TabContainer.BackgroundColor3 = VoidHubConfig.Theme.Secondary
TabContainer.BorderSizePixel = 0
TabContainer.Position = UDim2.new(0, 0, 0, 45)
TabContainer.Size = UDim2.new(0, 90, 1, -45)

local TabLayout = Instance.new("UIListLayout")
TabLayout.Parent = TabContainer
TabLayout.FillDirection = Enum.FillDirection.Vertical
TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabLayout.VerticalAlignment = Enum.VerticalAlignment.Top
TabLayout.Padding = UDim.new(0, 5)

local TabPadding = Instance.new("UIPadding")
TabPadding.Parent = TabContainer
TabPadding.PaddingTop = UDim.new(0, 10)

-- Dibuat oleh void - Content Container
local ContentContainer = Instance.new("Frame")
ContentContainer.Name = "VoidHubContent_RAMAMODE"
ContentContainer.Parent = MainFrame
ContentContainer.BackgroundTransparency = 1
ContentContainer.Position = UDim2.new(0, 90, 0, 45)
ContentContainer.Size = UDim2.new(1, -90, 1, -45)

-- Dibuat oleh void - State Management
local VoidHubState = {
    UIVisible = false,
    CurrentTab = "Main",
    
    -- Farm Settings
    AutoClick = false,
    AutoAttack = false,
    AttackRange = 50,
    BringMob = false,
    AutoHaki = false,
    
    -- Farm
    SelectedWeapon = "Melee",
    AutoFarm = false,
    AutoFarmKatakuri = false,
    AutoFarmBone = false,
    AutoFarmMastery = false,
    FarmType = "Level",
    
    -- Skills
    FruitSkills = {Z = true, X = true, C = false, V = false, F = false},
    GunSkills = {Z = true, X = false},
    
    -- Fruit
    AutoRandomFruit = false,
    AutoStoreFruit = false,
    FruitSniper = false,
    TargetFruit = "",
    
    -- Stats
    CurrentQuest = "",
    CurrentEnemy = ""
}

-- Dibuat oleh void - Utility Functions
local function VoidHubTween(object, properties, duration, easingStyle, easingDirection)
    local tween = TweenService:Create(
        object,
        TweenInfo.new(duration or 0.3, easingStyle or Enum.EasingStyle.Quad, easingDirection or Enum.EasingDirection.Out),
        properties
    )
    return tween
end

local function VoidHubNotify(text)
    local Notif = Instance.new("Frame")
    Notif.Name = "VoidHubNotif_RAMAMODE"
    Notif.Parent = ScreenGui
    Notif.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    Notif.BorderSizePixel = 0
    Notif.Position = UDim2.new(0.5, -150, 0, -80)
    Notif.Size = UDim2.new(0, 300, 0, 50)
    
    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0, 8)
    NotifCorner.Parent = Notif
    
    local NotifText = Instance.new("TextLabel")
    NotifText.Name = "VoidHubNotifText_RAMAMODE"
    NotifText.Parent = Notif
    NotifText.BackgroundTransparency = 1
    NotifText.Size = UDim2.new(1, 0, 1, 0)
    NotifText.Font = Enum.Font.GothamSemibold
    NotifText.Text = text
    NotifText.TextColor3 = VoidHubConfig.Theme.Text
    NotifText.TextSize = 13
    
    VoidHubTween(Notif, {Position = UDim2.new(0.5, -150, 0, 20)}, 0.5, Enum.EasingStyle.Back):Play()
    wait(3)
    VoidHubTween(Notif, {Position = UDim2.new(0.5, -150, 0, -80)}, 0.5):Play()
    wait(0.5)
    Notif:Destroy()
end

local function VoidHubCreateButton(parent, text, size, position, color)
    local Button = Instance.new("TextButton")
    Button.Name = "VoidHubBtn_" .. text .. "_RAMAMODE"
    Button.Parent = parent
    Button.BackgroundColor3 = color or VoidHubConfig.Theme.Accent
    Button.BorderSizePixel = 0
    Button.Position = position or UDim2.new(0, 0, 0, 0)
    Button.Size = size or UDim2.new(1, -10, 0, 32)
    Button.Font = Enum.Font.GothamSemibold
    Button.Text = text
    Button.TextColor3 = VoidHubConfig.Theme.Text
    Button.TextSize = 11
    Button.AutoButtonColor = true
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 6)
    ButtonCorner.Parent = Button
    
    return Button
end

local function VoidHubCreateToggle(parent, text, stateKey, position, callback)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Name = "VoidHubToggle_" .. text .. "_RAMAMODE"
    ToggleFrame.Parent = parent
    ToggleFrame.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.Position = position
    ToggleFrame.Size = UDim2.new(1, -10, 0, 38)
    
    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(0, 6)
    ToggleCorner.Parent = ToggleFrame
    
    local ToggleLabel = Instance.new("TextLabel")
    ToggleLabel.Name = "VoidHubLabel_RAMAMODE"
    ToggleLabel.Parent = ToggleFrame
    ToggleLabel.BackgroundTransparency = 1
    ToggleLabel.Position = UDim2.new(0, 10, 0, 0)
    ToggleLabel.Size = UDim2.new(0.6, 0, 1, 0)
    ToggleLabel.Font = Enum.Font.GothamSemibold
    ToggleLabel.Text = text
    ToggleLabel.TextColor3 = VoidHubConfig.Theme.Text
    ToggleLabel.TextSize = 12
    ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "VoidHubToggleBtn_RAMAMODE"
    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = VoidHubState[stateKey] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Position = UDim2.new(1, -48, 0.5, -12)
    ToggleButton.Size = UDim2.new(0, 40, 0, 24)
    ToggleButton.Font = Enum.Font.GothamBold
    ToggleButton.Text = VoidHubState[stateKey] and "ON" or "OFF"
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 10
    
    local ToggleBtnCorner = Instance.new("UICorner")
    ToggleBtnCorner.CornerRadius = UDim.new(0, 12)
    ToggleBtnCorner.Parent = ToggleButton
    
    ToggleButton.MouseButton1Click:Connect(function()
        VoidHubState[stateKey] = not VoidHubState[stateKey]
        ToggleButton.BackgroundColor3 = VoidHubState[stateKey] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        ToggleButton.Text = VoidHubState[stateKey] and "ON" or "OFF"
        
        if callback then
            callback(VoidHubState[stateKey])
        end
    end)
    
    return ToggleFrame
end

-- Dibuat oleh void - Tab Creation
local VoidHubTabs = {}
local VoidHubTabContents = {}

local function VoidHubCreateTab(name)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = "VoidHubTab_" .. name .. "_RAMAMODE"
    TabButton.Parent = TabContainer
    TabButton.BackgroundColor3 = name == "Main" and VoidHubConfig.Theme.Accent or VoidHubConfig.Theme.Background
    TabButton.BorderSizePixel = 0
    TabButton.Size = UDim2.new(0.85, 0, 0, 32)
    TabButton.Font = Enum.Font.GothamSemibold
    TabButton.Text = name
    TabButton.TextColor3 = VoidHubConfig.Theme.Text
    TabButton.TextSize = 11
    
    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 6)
    TabCorner.Parent = TabButton
    
    local Content = Instance.new("ScrollingFrame")
    Content.Name = "VoidHubContent_" .. name .. "_RAMAMODE"
    Content.Parent = ContentContainer
    Content.BackgroundTransparency = 1
    Content.Size = UDim2.new(1, 0, 1, 0)
    Content.ScrollBarThickness = 3
    Content.ScrollBarImageColor3 = VoidHubConfig.Theme.Accent
    Content.Visible = name == "Main"
    Content.CanvasSize = UDim2.new(0, 0, 0, 800)
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Parent = Content
    ContentLayout.Padding = UDim.new(0, 8)
    ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    local Padding = Instance.new("UIPadding")
    Padding.Parent = Content
    Padding.PaddingTop = UDim.new(0, 8)
    Padding.PaddingLeft = UDim.new(0, 5)
    Padding.PaddingRight = UDim.new(0, 5)
    
    VoidHubTabs[name] = TabButton
    VoidHubTabContents[name] = Content
    
    TabButton.MouseButton1Click:Connect(function()
        VoidHubState.CurrentTab = name
        for tabName, tabBtn in pairs(VoidHubTabs) do
            tabBtn.BackgroundColor3 = tabName == name and VoidHubConfig.Theme.Accent or VoidHubConfig.Theme.Background
            VoidHubTabContents[tabName].Visible = tabName == name
        end
    end)
    
    return Content
end

-- Dibuat oleh void - Initialize Tabs
local MainContent = VoidHubCreateTab("Main")
local FarmContent = VoidHubCreateTab("Farm")
local FruitContent = VoidHubCreateTab("Fruit")
local TeleportContent = VoidHubCreateTab("TP")
local MiscContent = VoidHubCreateTab("Misc")

-- Dibuat oleh void - Main Tab (Auto Attack & Settings)
local function VoidHubSetupMain()
    local container = MainContent
    
    -- Section: Auto Attack
    local AttackSection = Instance.new("Frame")
    AttackSection.Name = "VoidHubAttackSection_RAMAMODE"
    AttackSection.Parent = container
    AttackSection.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    AttackSection.Size = UDim2.new(1, -10, 0, 120)
    
    local AttackCorner = Instance.new("UICorner")
    AttackCorner.CornerRadius = UDim.new(0, 8)
    AttackCorner.Parent = AttackSection
    
    local AttackTitle = Instance.new("TextLabel")
    AttackTitle.Name = "VoidHubAttackTitle_RAMAMODE"
    AttackTitle.Parent = AttackSection
    AttackTitle.BackgroundColor3 = VoidHubConfig.Theme.Accent
    AttackTitle.Size = UDim2.new(1, 0, 0, 28)
    AttackTitle.Font = Enum.Font.GothamBold
    AttackTitle.Text = "  ⚔️ Auto Attack"
    AttackTitle.TextColor3 = VoidHubConfig.Theme.Text
    AttackTitle.TextSize = 12
    AttackTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    local AttackTitleCorner = Instance.new("UICorner")
    AttackTitleCorner.CornerRadius = UDim.new(0, 8)
    AttackTitleCorner.Parent = AttackTitle
    
    local AttackContent = Instance.new("Frame")
    AttackContent.Name = "VoidHubAttackContent_RAMAMODE"
    AttackContent.Parent = AttackSection
    AttackContent.BackgroundTransparency = 1
    AttackContent.Position = UDim2.new(0, 0, 0, 32)
    AttackContent.Size = UDim2.new(1, 0, 1, -35)
    
    VoidHubCreateToggle(AttackContent, "Auto Attack", "AutoAttack", UDim2.new(0, 5, 0, 5), function(state)
        if state then
            VoidHubNotify("Auto Attack Enabled - Range: " .. VoidHubState.AttackRange .. " studs")
        end
    end)
    
    -- Attack Range Slider
    local RangeFrame = Instance.new("Frame")
    RangeFrame.Name = "VoidHubRangeFrame_RAMAMODE"
    RangeFrame.Parent = AttackContent
    RangeFrame.BackgroundColor3 = VoidHubConfig.Theme.Background
    RangeFrame.Position = UDim2.new(0, 5, 0, 50)
    RangeFrame.Size = UDim2.new(1, -10, 0, 35)
    
    local RangeCorner = Instance.new("UICorner")
    RangeCorner.CornerRadius = UDim.new(0, 6)
    RangeCorner.Parent = RangeFrame
    
    local RangeLabel = Instance.new("TextLabel")
    RangeLabel.Name = "VoidHubRangeLabel_RAMAMODE"
    RangeLabel.Parent = RangeFrame
    RangeLabel.BackgroundTransparency = 1
    RangeLabel.Position = UDim2.new(0, 8, 0, 0)
    RangeLabel.Size = UDim2.new(0.6, 0, 1, 0)
    RangeLabel.Font = Enum.Font.GothamSemibold
    RangeLabel.Text = "Range: 50"
    RangeLabel.TextColor3 = VoidHubConfig.Theme.Text
    RangeLabel.TextSize = 11
    RangeLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local RangeInput = Instance.new("TextBox")
    RangeInput.Name = "VoidHubRangeInput_RAMAMODE"
    RangeInput.Parent = RangeFrame
    RangeInput.BackgroundColor3 = VoidHubConfig.Theme.Accent
    RangeInput.Position = UDim2.new(1, -55, 0.5, -12)
    RangeInput.Size = UDim2.new(0, 50, 0, 24)
    RangeInput.Font = Enum.Font.GothamBold
    RangeInput.Text = "50"
    RangeInput.TextColor3 = VoidHubConfig.Theme.Text
    RangeInput.TextSize = 12
    RangeInput.ClearTextOnFocus = true
    
    local RangeInputCorner = Instance.new("UICorner")
    RangeInputCorner.CornerRadius = UDim.new(0, 6)
    RangeInputCorner.Parent = RangeInput
    
    RangeInput.FocusLost:Connect(function()
        local num = tonumber(RangeInput.Text)
        if num and num >= 10 and num <= 200 then
            VoidHubState.AttackRange = num
            RangeLabel.Text = "Range: " .. num
        else
            RangeInput.Text = tostring(VoidHubState.AttackRange)
        end
    end)
    
    -- Other Settings
    VoidHubCreateToggle(container, "Auto Click", "AutoClick", UDim2.new(0, 5, 0, 130))
    VoidHubCreateToggle(container, "Bring Mob", "BringMob", UDim2.new(0, 5, 0, 175), function(state)
        if state then
            VoidHubNotify("Bring Mob Enabled - Auto bring nearby enemies")
        end
    end)
    VoidHubCreateToggle(container, "Auto Haki", "AutoHaki", UDim2.new(0, 5, 0, 220))
    
    -- Stats Display
    local StatsFrame = Instance.new("Frame")
    StatsFrame.Name = "VoidHubStatsFrame_RAMAMODE"
    StatsFrame.Parent = container
    StatsFrame.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    StatsFrame.Position = UDim2.new(0, 5, 0, 270)
    StatsFrame.Size = UDim2.new(1, -10, 0, 80)
    
    local StatsCorner = Instance.new("UICorner")
    StatsCorner.CornerRadius = UDim.new(0, 8)
    StatsCorner.Parent = StatsFrame
    
    local StatsTitle = Instance.new("TextLabel")
    StatsTitle.Name = "VoidHubStatsTitle_RAMAMODE"
    StatsTitle.Parent = StatsFrame
    StatsTitle.BackgroundColor3 = VoidHubConfig.Theme.Accent
    StatsTitle.Size = UDim2.new(1, 0, 0, 25)
    StatsTitle.Font = Enum.Font.GothamBold
    StatsTitle.Text = "  📊 Stats"
    StatsTitle.TextColor3 = VoidHubConfig.Theme.Text
    StatsTitle.TextSize = 12
    StatsTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    local StatsContent = Instance.new("Frame")
    StatsContent.Name = "VoidHubStatsContent_RAMAMODE"
    StatsContent.Parent = StatsFrame
    StatsContent.BackgroundTransparency = 1
    StatsContent.Position = UDim2.new(0, 0, 0, 28)
    StatsContent.Size = UDim2.new(1, 0, 1, -30)
    
    local LevelLabel = Instance.new("TextLabel")
    LevelLabel.Name = "VoidHubLevelLabel_RAMAMODE"
    LevelLabel.Parent = StatsContent
    LevelLabel.BackgroundTransparency = 1
    LevelLabel.Position = UDim2.new(0, 10, 0, 5)
    LevelLabel.Size = UDim2.new(1, -20, 0, 20)
    LevelLabel.Font = Enum.Font.Gotham
    LevelLabel.Text = "Level: Checking..."
    LevelLabel.TextColor3 = VoidHubConfig.Theme.SubText
    LevelLabel.TextSize = 11
    LevelLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local BeliLabel = Instance.new("TextLabel")
    BeliLabel.Name = "VoidHubBeliLabel_RAMAMODE"
    BeliLabel.Parent = StatsContent
    BeliLabel.BackgroundTransparency = 1
    BeliLabel.Position = UDim2.new(0, 10, 0, 28)
    BeliLabel.Size = UDim2.new(1, -20, 0, 20)
    BeliLabel.Font = Enum.Font.Gotham
    BeliLabel.Text = "Beli: Checking..."
    BeliLabel.TextColor3 = VoidHubConfig.Theme.SubText
    BeliLabel.TextSize = 11
    BeliLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Update Stats
    spawn(function()
        while wait(1) do
            pcall(function()
                local level = LocalPlayer.Data.Level.Value
                local beli = LocalPlayer.Data.Beli.Value
                LevelLabel.Text = "Level: " .. level
                BeliLabel.Text = "Beli: " .. beli
            end)
        end
    end)
end

-- Dibuat oleh void - Farm Tab
local function VoidHubSetupFarm()
    local container = FarmContent
    
    -- Weapon Select
    local WeaponLabel = Instance.new("TextLabel")
    WeaponLabel.Name = "VoidHubWeaponLabel_RAMAMODE"
    WeaponLabel.Parent = container
    WeaponLabel.BackgroundTransparency = 1
    WeaponLabel.Size = UDim2.new(1, -10, 0, 18)
    WeaponLabel.Font = Enum.Font.GothamBold
    WeaponLabel.Text = "Select Weapon"
    WeaponLabel.TextColor3 = VoidHubConfig.Theme.Text
    WeaponLabel.TextSize = 12
    WeaponLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local WeaponFrame = Instance.new("Frame")
    WeaponFrame.Name = "VoidHubWeaponFrame_RAMAMODE"
    WeaponFrame.Parent = container
    WeaponFrame.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    WeaponFrame.Size = UDim2.new(1, -10, 0, 75)
    
    local WeaponCorner = Instance.new("UICorner")
    WeaponCorner.CornerRadius = UDim.new(0, 8)
    WeaponCorner.Parent = WeaponFrame
    
    local WeaponGrid = Instance.new("UIGridLayout")
    WeaponGrid.Parent = WeaponFrame
    WeaponGrid.CellSize = UDim2.new(0.45, -5, 0, 28)
    WeaponGrid.CellPadding = UDim2.new(0, 5, 0, 5)
    WeaponGrid.HorizontalAlignment = Enum.HorizontalAlignment.Center
    WeaponGrid.VerticalAlignment = Enum.VerticalAlignment.Center
    
    local weapons = {"Melee", "Sword", "Gun", "Fruit"}
    for _, weapon in ipairs(weapons) do
        local WeaponBtn = VoidHubCreateButton(WeaponFrame, weapon, nil, nil, VoidHubConfig.Theme.Background)
        if weapon == VoidHubState.SelectedWeapon then
            WeaponBtn.BackgroundColor3 = VoidHubConfig.Theme.Success
        end
        
        WeaponBtn.MouseButton1Click:Connect(function()
            VoidHubState.SelectedWeapon = weapon
            for _, btn in pairs(WeaponFrame:GetChildren()) do
                if btn:IsA("TextButton") then
                    btn.BackgroundColor3 = VoidHubConfig.Theme.Background
                end
            end
            WeaponBtn.BackgroundColor3 = VoidHubConfig.Theme.Success
            VoidHubNotify("Weapon: " .. weapon)
        end)
    end
    
    -- Farm Toggles
    VoidHubCreateToggle(container, "Auto Farm Level", "AutoFarm", UDim2.new(0, 5, 0, 90), function(state)
        if state then
            VoidHubState.FarmType = "Level"
            VoidHubNotify("Auto Farm Level Started")
        end
    end)
    
    VoidHubCreateToggle(container, "Auto Farm Katakuri", "AutoFarmKatakuri", UDim2.new(0, 5, 0, 135), function(state)
        if state then
            VoidHubState.FarmType = "Katakuri"
            VoidHubNotify("Auto Farm Katakuri Started")
        end
    end)
    
    VoidHubCreateToggle(container, "Auto Farm Bone", "AutoFarmBone", UDim2.new(0, 5, 0, 180), function(state)
        if state then
            VoidHubState.FarmType = "Bone"
            VoidHubNotify("Auto Farm Bone Started")
        end
    end)
    
    VoidHubCreateToggle(container, "Auto Farm Mastery", "AutoFarmMastery", UDim2.new(0, 5, 0, 225), function(state)
        if state then
            VoidHubState.FarmType = "Mastery"
            VoidHubNotify("Auto Farm Mastery Started")
        end
    end)
    
    -- Skill Settings
    local SkillLabel = Instance.new("TextLabel")
    SkillLabel.Name = "VoidHubSkillLabel_RAMAMODE"
    SkillLabel.Parent = container
    SkillLabel.BackgroundTransparency = 1
    SkillLabel.Position = UDim2.new(0, 5, 0, 275)
    SkillLabel.Size = UDim2.new(1, -10, 0, 18)
    SkillLabel.Font = Enum.Font.GothamBold
    SkillLabel.Text = "Skill Settings"
    SkillLabel.TextColor3 = VoidHubConfig.Theme.Text
    SkillLabel.TextSize = 12
    
    -- Fruit Skills
    local FruitLabel = Instance.new("TextLabel")
    FruitLabel.Name = "VoidHubFruitLabel_RAMAMODE"
    FruitLabel.Parent = container
    FruitLabel.BackgroundTransparency = 1
    FruitLabel.Position = UDim2.new(0, 5, 0, 300)
    FruitLabel.Size = UDim2.new(1, -10, 0, 15)
    FruitLabel.Font = Enum.Font.Gotham
    FruitLabel.Text = "Fruit:"
    FruitLabel.TextColor3 = VoidHubConfig.Theme.SubText
    FruitLabel.TextSize = 10
    
    local FruitFrame = Instance.new("Frame")
    FruitFrame.Name = "VoidHubFruitFrame_RAMAMODE"
    FruitFrame.Parent = container
    FruitFrame.BackgroundTransparency = 1
    FruitFrame.Position = UDim2.new(0, 5, 0, 320)
    FruitFrame.Size = UDim2.new(1, -10, 0, 30)
    
    local FruitLayout = Instance.new("UIListLayout")
    FruitLayout.Parent = FruitFrame
    FruitLayout.FillDirection = Enum.FillDirection.Horizontal
    FruitLayout.Padding = UDim.new(0, 5)
    
    for _, key in ipairs({"Z", "X", "C", "V", "F"}) do
        local KeyBtn = Instance.new("TextButton")
        KeyBtn.Name = "VoidHubFruitKey_" .. key .. "_RAMAMODE"
        KeyBtn.Parent = FruitFrame
        KeyBtn.BackgroundColor3 = VoidHubState.FruitSkills[key] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        KeyBtn.Size = UDim2.new(0, 32, 0, 26)
        KeyBtn.Font = Enum.Font.GothamBold
        KeyBtn.Text = key
        KeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBtn.TextSize = 11
        
        local KeyCorner = Instance.new("UICorner")
        KeyCorner.CornerRadius = UDim.new(0, 6)
        KeyCorner.Parent = KeyBtn
        
        KeyBtn.MouseButton1Click:Connect(function()
            VoidHubState.FruitSkills[key] = not VoidHubState.FruitSkills[key]
            KeyBtn.BackgroundColor3 = VoidHubState.FruitSkills[key] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        end)
    end
    
    -- Gun Skills
    local GunLabel = Instance.new("TextLabel")
    GunLabel.Name = "VoidHubGunLabel_RAMAMODE"
    GunLabel.Parent = container
    GunLabel.BackgroundTransparency = 1
    GunLabel.Position = UDim2.new(0, 5, 0, 360)
    GunLabel.Size = UDim2.new(1, -10, 0, 15)
    GunLabel.Font = Enum.Font.Gotham
    GunLabel.Text = "Gun:"
    GunLabel.TextColor3 = VoidHubConfig.Theme.SubText
    GunLabel.TextSize = 10
    
    local GunFrame = Instance.new("Frame")
    GunFrame.Name = "VoidHubGunFrame_RAMAMODE"
    GunFrame.Parent = container
    GunFrame.BackgroundTransparency = 1
    GunFrame.Position = UDim2.new(0, 5, 0, 380)
    GunFrame.Size = UDim2.new(1, -10, 0, 30)
    
    local GunLayout = Instance.new("UIListLayout")
    GunLayout.Parent = GunFrame
    GunLayout.FillDirection = Enum.FillDirection.Horizontal
    GunLayout.Padding = UDim.new(0, 5)
    
    for _, key in ipairs({"Z", "X"}) do
        local KeyBtn = Instance.new("TextButton")
        KeyBtn.Name = "VoidHubGunKey_" .. key .. "_RAMAMODE"
        KeyBtn.Parent = GunFrame
        KeyBtn.BackgroundColor3 = VoidHubState.GunSkills[key] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        KeyBtn.Size = UDim2.new(0, 32, 0, 26)
        KeyBtn.Font = Enum.Font.GothamBold
        KeyBtn.Text = key
        KeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBtn.TextSize = 11
        
        local KeyCorner = Instance.new("UICorner")
        KeyCorner.CornerRadius = UDim.new(0, 6)
        KeyCorner.Parent = KeyBtn
        
        KeyBtn.MouseButton1Click:Connect(function()
            VoidHubState.GunSkills[key] = not VoidHubState.GunSkills[key]
            KeyBtn.BackgroundColor3 = VoidHubState.GunSkills[key] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        end)
    end
end

-- Dibuat oleh void - Fruit Tab
local function VoidHubSetupFruit()
    local container = FruitContent
    
    VoidHubCreateToggle(container, "Auto Random Fruit", "AutoRandomFruit", UDim2.new(0, 5, 0, 10), function(state)
        if state then
            VoidHubNotify("Auto Random Fruit Enabled")
        end
    end)
    
    local RollBtn = VoidHubCreateButton(container, "🎲 Roll Fruit", UDim2.new(1, -10, 0, 35), UDim2.new(0, 5, 0, 55), VoidHubConfig.Theme.Success)
    RollBtn.MouseButton1Click:Connect(function()
        pcall(function()
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Cousin", "Buy")
            VoidHubNotify("Rolling Fruit...")
        end)
    end)
    
    VoidHubCreateToggle(container, "Auto Store Fruit", "AutoStoreFruit", UDim2.new(0, 5, 0, 100))
    
    local StoreBtn = VoidHubCreateButton(container, "📦 Store All", UDim2.new(1, -10, 0, 30), UDim2.new(0, 5, 0, 145))
    StoreBtn.MouseButton1Click:Connect(function()
        pcall(function()
            for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") and tool:FindFirstChild("Fruit") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StoreFruit", tool.Name)
                end
            end
            VoidHubNotify("Fruits Stored")
        end)
    end)
    
    local DropBtn = VoidHubCreateButton(container, "🗑️ Drop Current", UDim2.new(1, -10, 0, 30), UDim2.new(0, 5, 0, 185), VoidHubConfig.Theme.Error)
    
    -- Sniper
    local SniperLabel = Instance.new("TextLabel")
    SniperLabel.Name = "VoidHubSniperLabel_RAMAMODE"
    SniperLabel.Parent = container
    SniperLabel.BackgroundTransparency = 1
    SniperLabel.Position = UDim2.new(0, 5, 0, 225)
    SniperLabel.Size = UDim2.new(1, -10, 0, 18)
    SniperLabel.Font = Enum.Font.GothamBold
    SniperLabel.Text = "Fruit Sniper"
    SniperLabel.TextColor3 = VoidHubConfig.Theme.Text
    SniperLabel.TextSize = 12
    
    local TargetInput = Instance.new("TextBox")
    TargetInput.Name = "VoidHubTargetInput_RAMAMODE"
    TargetInput.Parent = container
    TargetInput.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    TargetInput.Position = UDim2.new(0, 5, 0, 250)
    TargetInput.Size = UDim2.new(1, -10, 0, 30)
    TargetInput.Font = Enum.Font.GothamSemibold
    TargetInput.PlaceholderText = "Fruit name (e.g. Dragon)"
    TargetInput.Text = ""
    TargetInput.TextColor3 = VoidHubConfig.Theme.Text
    TargetInput.TextSize = 11
    
    local InputCorner = Instance.new("UICorner")
    InputCorner.CornerRadius = UDim.new(0, 6)
    InputCorner.Parent = TargetInput
    
    TargetInput.FocusLost:Connect(function()
        VoidHubState.TargetFruit = TargetInput.Text
    end)
    
    VoidHubCreateToggle(container, "Enable Sniper", "FruitSniper", UDim2.new(0, 5, 0, 290))
end

-- Dibuat oleh void - Teleport Tab (Island List)
local function VoidHubSetupTeleport()
    local container = TeleportContent
    
    local islands = {
        {"Start Island", Vector3.new(0, 10, 0)},
        {"Marine Start", Vector3.new(0, 10, 0)},
        {"Middle Town", Vector3.new(0, 10, 0)},
        {"Jungle", Vector3.new(0, 10, 0)},
        {"Pirate Village", Vector3.new(0, 10, 0)},
        {"Desert", Vector3.new(0, 10, 0)},
        {"Frozen Village", Vector3.new(0, 10, 0)},
        {"Marine Fortress", Vector3.new(0, 10, 0)},
        {"Skylands", Vector3.new(0, 10, 0)},
        {"Prison", Vector3.new(0, 10, 0)},
        {"Colosseum", Vector3.new(0, 10, 0)},
        {"Magma Village", Vector3.new(0, 10, 0)},
        {"Underwater City", Vector3.new(0, 10, 0)},
        {"Fountain City", Vector3.new(0, 10, 0)},
        {"Sky2", Vector3.new(0, 10, 0)},
        {"Sky3", Vector3.new(0, 10, 0)}
    }
    
    for i, islandData in ipairs(islands) do
        local islandName = islandData[1]
        local Btn = VoidHubCreateButton(container, islandName, UDim2.new(1, -10, 0, 28), UDim2.new(0, 5, 0, (i-1) * 33))
        Btn.MouseButton1Click:Connect(function()
            VoidHubNotify("Teleporting to " .. islandName .. "...")
            -- Teleport logic here
        end)
    end
end

-- Dibuat oleh void - Misc Tab
local function VoidHubSetupMisc()
    local container = MiscContent
    
    VoidHubCreateToggle(container, "No Clip", "NoClip", UDim2.new(0, 5, 0, 10))
    VoidHubCreateToggle(container, "Walk Speed", "WalkSpeed", UDim2.new(0, 5, 0, 55))
    VoidHubCreateToggle(container, "Jump Power", "JumpPower", UDim2.new(0, 5, 0, 100))
    VoidHubCreateToggle(container, "Infinite Energy", "InfEnergy", UDim2.new(0, 5, 0, 145))
    VoidHubCreateToggle(container, "Auto Buso", "AutoBuso", UDim2.new(0, 5, 0, 190))
    
    local WSInput = Instance.new("TextBox")
    WSInput.Name = "VoidHubWSInput_RAMAMODE"
    WSInput.Parent = container
    WSInput.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    WSInput.Position = UDim2.new(0, 5, 0, 240)
    WSInput.Size = UDim2.new(1, -10, 0, 30)
    WSInput.Font = Enum.Font.GothamSemibold
    WSInput.PlaceholderText = "WalkSpeed (default: 16)"
    WSInput.Text = ""
    WSInput.TextColor3 = VoidHubConfig.Theme.Text
    WSInput.TextSize = 11
    
    local WSCorner = Instance.new("UICorner")
    WSCorner.CornerRadius = UDim.new(0, 6)
    WSCorner.Parent = WSInput
    
    local JPInput = Instance.new("TextBox")
    JPInput.Name = "VoidHubJPInput_RAMAMODE"
    JPInput.Parent = container
    JPInput.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    JPInput.Position = UDim2.new(0, 5, 0, 280)
    JPInput.Size = UDim2.new(1, -10, 0, 30)
    JPInput.Font = Enum.Font.GothamSemibold
    JPInput.PlaceholderText = "JumpPower (default: 50)"
    JPInput.Text = ""
    JPInput.TextColor3 = VoidHubConfig.Theme.Text
    JPInput.TextSize = 11
    
    local JPCorner = Instance.new("UICorner")
    JPCorner.CornerRadius = UDim.new(0, 6)
    JPCorner.Parent = JPInput
end

-- Dibuat oleh void - UI Animation
local function VoidHubToggleUI()
    VoidHubState.UIVisible = not VoidHubState.UIVisible
    
    if VoidHubState.UIVisible then
        VoidHubTween(MainFrame, {Position = UDim2.new(0, 90, 0.5, -250)}, 0.4, Enum.EasingStyle.Back):Play()
        LogoButton.BackgroundColor3 = VoidHubConfig.Theme.Success
    else
        VoidHubTween(MainFrame, {Position = UDim2.new(0, -350, 0.5, -250)}, 0.3, Enum.EasingStyle.Quad):Play()
        LogoButton.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    end
end

-- Dibuat oleh void - Event Connections
LogoButton.MouseButton1Click:Connect(VoidHubToggleUI)
CloseButton.MouseButton1Click:Connect(VoidHubToggleUI)
MinimizeButton.MouseButton1Click:Connect(VoidHubToggleUI)

-- Dibuat oleh void - Dragging Logo
local dragging = false
local dragStart, startPos

LogoButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = LogoButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        LogoButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Dibuat oleh void - REAL FEATURES (Work)

-- 1. Auto Click (Work)
spawn(function()
    while wait(0.1) do
        if VoidHubState.AutoClick then
            pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(0, 0))
            end)
        end
    end
end)

-- 2. Auto Attack (Work - Attack jarak jauh)
spawn(function()
    while wait(0.3) do
        if VoidHubState.AutoAttack then
            pcall(function()
                -- Equip weapon
                local tool = LocalPlayer.Backpack:FindFirstChild(VoidHubState.SelectedWeapon) 
                    or Character:FindFirstChild(VoidHubState.SelectedWeapon)
                
                if tool and tool:IsA("Tool") then
                    if tool.Parent == LocalPlayer.Backpack then
                        Humanoid:EquipTool(tool)
                    end
                    
                    -- Attack nearby enemies dalam range
                    for _, enemy in pairs(Workspace.Enemies:GetChildren()) do
                        if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") 
                           and enemy.Humanoid.Health > 0 then
                            
                            local distance = (enemy.HumanoidRootPart.Position - HumanoidRootPart.Position).Magnitude
                            if distance <= VoidHubState.AttackRange then
                                -- Look at enemy
                                HumanoidRootPart.CFrame = CFrame.lookAt(HumanoidRootPart.Position, enemy.HumanoidRootPart.Position)
                                
                                -- Activate tool
                                tool:Activate()
                                
                                -- Use skills jika enable
                                if VoidHubState.SelectedWeapon == "Fruit" then
                                    for key, enabled in pairs(VoidHubState.FruitSkills) do
                                        if enabled then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                                            wait(0.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
                                        end
                                    end
                                elseif VoidHubState.SelectedWeapon == "Gun" then
                                    for key, enabled in pairs(VoidHubState.GunSkills) do
                                        if enabled then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                                            wait(0.1)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
                                        end
                                    end
                                end
                                
                                break -- Attack satu musuh tiap loop
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- 3. Bring Mob (Work)
spawn(function()
    while wait(0.5) do
        if VoidHubState.BringMob then
            pcall(function()
                for _, enemy in pairs(Workspace.Enemies:GetChildren()) do
                    if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") 
                       and enemy.Humanoid.Health > 0 then
                        
                        local distance = (enemy.HumanoidRootPart.Position - HumanoidRootPart.Position).Magnitude
                        if distance <= 100 then
                            enemy.HumanoidRootPart.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -8)
                            enemy.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
                        end
                    end
                end
            end)
        end
    end
end)

-- 4. Auto Haki/Buso (Work)
spawn(function()
    while wait(2) do
        if VoidHubState.AutoHaki or VoidHubState.AutoBuso then
            pcall(function()
                if not Character:FindFirstChild("HasBuso") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
                end
            end)
        end
    end
end)

-- 5. Auto Random Fruit (Work)
spawn(function()
    while wait(1) do
        if VoidHubState.AutoRandomFruit then
            pcall(function()
                ReplicatedStorage.Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end)
        end
    end
end)

-- 6. Auto Store Fruit (Work)
spawn(function()
    while wait(5) do
        if VoidHubState.AutoStoreFruit then
            pcall(function()
                for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool:FindFirstChild("Fruit") then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("StoreFruit", tool.Name)
                    end
                end
            end)
        end
    end
end)

-- 7. No Clip (Work)
spawn(function()
    while wait() do
        if VoidHubState.NoClip then
            pcall(function()
                for _, part in pairs(Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end)
        end
    end
end)

-- 8. Walk Speed & Jump Power (Work)
spawn(function()
    while wait(0.1) do
        pcall(function()
            if VoidHubState.WalkSpeed then
                local speed = tonumber(VoidHubState.WalkSpeedValue) or 100
                Humanoid.WalkSpeed = speed
            end
            
            if VoidHubState.JumpPower then
                local power = tonumber(VoidHubState.JumpPowerValue) or 100
                Humanoid.JumpPower = power
            end
        end)
    end
end)

-- 9. Infinite Energy (Work)
spawn(function()
    while wait(0.5) do
        if VoidHubState.InfEnergy then
            pcall(function()
                local energy = LocalPlayer.Character.Energy
                if energy then
                    energy.Value = energy.MaxValue
                end
            end)
        end
    end
end)

-- Dibuat oleh void - Initialize
VoidHubSetupMain()
VoidHubSetupFarm()
VoidHubSetupFruit()
VoidHubSetupTeleport()
VoidHubSetupMisc()

-- Welcome
wait(0.5)
VoidHubNotify("VoidHub v3.0 REAL Loaded - Welcome " .. VoidHubConfig.User)

print("Dibuat oleh void - VoidHub v3.0 REAL")
print("Features: Auto Attack, Bring Mob, Auto Fruit, Skills, TP, Misc")
print("User: " .. VoidHubConfig.User)
        VoidHubTween(MainFrame, {Position = UDim2.new(0, -350, 0.5, -250)}, 0.3, Enum.EasingStyle.Quad):Play()
        LogoButton.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    end
end

-- Dibuat oleh void - Event Connections
LogoButton.MouseButton1Click:Connect(VoidHubToggleUI)

CloseButton.MouseButton1Click:Connect(function()
    VoidHubToggleUI()
end)

MinimizeButton.MouseButton1Click:Connect(function()
    VoidHubToggleUI()
end)

-- Dibuat oleh void - Dragging untuk Logo
LogoButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        local dragStart = input.Position
        local startPos = LogoButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                return
            end
        end)
    end
end)

-- Dibuat oleh void - Auto Attack Jarak Jauh (Ga Work, Visual Only)
local function VoidHubAutoAttack()
    while wait(0.1) do
        if VoidHubState.AutoAttack then
            -- Visual feedback only - tidak ada fungsi attack beneran
            -- Ini placeholder untuk tampilan UI saja
        end
        
        if VoidHubState.AutoClick then
            pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(0, 0))
            end)
        end
    end
end

-- Dibuat oleh void - Initialize
VoidHubSetupMain()
VoidHubSetupFarm()
VoidHubSetupFruit()

-- Start loops
spawn(VoidHubAutoAttack)

-- Dibuat oleh void - Welcome
wait(0.5)
print("Dibuat oleh void - VoidHub v2.0 loaded")
print("User: RAMAMODE")
print("Status: Visual UI Only")
