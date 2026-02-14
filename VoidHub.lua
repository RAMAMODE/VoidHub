-- Dibuat oleh void - VoidHub System
-- VoidHub v6.0 DARK - Blox Fruits Script
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

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Dibuat oleh void - VoidHub Configuration
local VoidHubConfig = {
    Theme = {
        Background = Color3.fromRGB(30, 30, 35),
        Secondary = Color3.fromRGB(40, 40, 45),
        Accent = Color3.fromRGB(60, 60, 70),
        Text = Color3.fromRGB(255, 255, 255),
        SubText = Color3.fromRGB(180, 180, 180),
        Success = Color3.fromRGB(100, 255, 100),
        Warning = Color3.fromRGB(255, 200, 100),
        Error = Color3.fromRGB(255, 100, 100),
        Border = Color3.fromRGB(50, 50, 55)
    },
    LogoURL = "https://files.catbox.moe/wnig59.jpg",
    Creator = "Dibuat oleh void",
    ScriptName = "VoidHub",
    User = "RAMAMODE",
    Version = "v6.0 DARK"
}

-- Dibuat oleh void - ScreenGui Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VoidHub_RAMAMODE_" .. DibuatOlehVoid
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Dibuat oleh void - Main Frame (Mobile Optimized)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "VoidHubMain_RAMAMODE"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = VoidHubConfig.Theme.Background
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -275)
MainFrame.Size = UDim2.new(0, 400, 0, 550)
MainFrame.ClipsDescendants = true
MainFrame.Visible = false

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MainFrame

-- Dibuat oleh void - Shadow
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "VoidHubShadow_RAMAMODE"
Shadow.Parent = MainFrame
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.Image = "rbxassetid://5554236805"
Shadow.ImageColor3 = Color3.new(0, 0, 0)
Shadow.ImageTransparency = 0.6
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(23, 23, 277, 277)
Shadow.ZIndex = -1

-- Dibuat oleh void - Logo Button (Small Box)
local LogoButton = Instance.new("ImageButton")
LogoButton.Name = "VoidHubLogo_RAMAMODE"
LogoButton.Parent = ScreenGui
LogoButton.BackgroundColor3 = VoidHubConfig.Theme.Secondary
LogoButton.BorderSizePixel = 0
LogoButton.Position = UDim2.new(0, 20, 0.5, -40)
LogoButton.Size = UDim2.new(0, 80, 0, 80)
LogoButton.Image = VoidHubConfig.LogoURL
LogoButton.ScaleType = Enum.ScaleType.Crop

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 16)
LogoCorner.Parent = LogoButton

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color = VoidHubConfig.Theme.Accent
LogoStroke.Thickness = 2
LogoStroke.Parent = LogoButton

-- Dibuat oleh void - Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "VoidHubTitleBar_RAMAMODE"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = VoidHubConfig.Theme.Secondary
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 50)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
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
TitleText.Position = UDim2.new(0, 15, 0, 0)
TitleText.Size = UDim2.new(0.6, 0, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "VOIDHUB v6.0"
TitleText.TextColor3 = VoidHubConfig.Theme.Text
TitleText.TextSize = 22
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local SubTitle = Instance.new("TextLabel")
SubTitle.Name = "VoidHubSubTitle_RAMAMODE"
SubTitle.Parent = TitleBar
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 15, 0.5, 0)
SubTitle.Size = UDim2.new(0.6, 0, 0.5, 0)
SubTitle.Font = Enum.Font.Gotham
SubTitle.Text = "Blox Fruits - " .. VoidHubConfig.Creator
SubTitle.TextColor3 = VoidHubConfig.Theme.SubText
SubTitle.TextSize = 12
SubTitle.TextXAlignment = Enum.TextXAlignment.Left

local UserLabel = Instance.new("TextLabel")
UserLabel.Name = "VoidHubUserLabel_RAMAMODE"
UserLabel.Parent = TitleBar
UserLabel.BackgroundTransparency = 1
UserLabel.Position = UDim2.new(0.6, 0, 0, 0)
UserLabel.Size = UDim2.new(0.25, 0, 1, 0)
UserLabel.Font = Enum.Font.GothamBold
UserLabel.Text = "USER: " .. VoidHubConfig.User
UserLabel.TextColor3 = VoidHubConfig.Theme.Success
UserLabel.TextSize = 11
UserLabel.TextXAlignment = Enum.TextXAlignment.Right

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "VoidHubClose_RAMAMODE"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = VoidHubConfig.Theme.Error
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -45, 0.5, -15)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 16

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "VoidHubMinimize_RAMAMODE"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundColor3 = VoidHubConfig.Theme.Warning
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(1, -85, 0.5, -15)
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 20

local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 8)
MinimizeCorner.Parent = MinimizeButton

-- Dibuat oleh void - Tab System
local TabContainer = Instance.new("Frame")
TabContainer.Name = "VoidHubTabs_RAMAMODE"
TabContainer.Parent = MainFrame
TabContainer.BackgroundColor3 = VoidHubConfig.Theme.Secondary
TabContainer.BorderSizePixel = 0
TabContainer.Position = UDim2.new(0, 0, 0, 50)
TabContainer.Size = UDim2.new(1, 0, 0, 45)

local TabLayout = Instance.new("UIListLayout")
TabLayout.Parent = TabContainer
TabLayout.FillDirection = Enum.FillDirection.Horizontal
TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabLayout.VerticalAlignment = Enum.VerticalAlignment.Center
TabLayout.Padding = UDim.new(0, 8)

-- Dibuat oleh void - Content Container
local ContentContainer = Instance.new("Frame")
ContentContainer.Name = "VoidHubContent_RAMAMODE"
ContentContainer.Parent = MainFrame
ContentContainer.BackgroundTransparency = 1
ContentContainer.Position = UDim2.new(0, 0, 0, 95)
ContentContainer.Size = UDim2.new(1, 0, 1, -95)

-- Dibuat oleh void - State Management
local VoidHubState = {
    CurrentTab = "FarmSettings",
    SelectedWeapon = nil,
    SelectedFarmType = nil,
    AutoClick = false,
    FastAttack = false,
    BringMob = false,
    AutoFarm = false,
    AutoFarmKatakuri = false,
    AutoFarmBone = false,
    AutoFarmMastery = false,
    AutoRandomFruit = false,
    FruitSkills = {Z = false, X = false, C = false, V = false, F = false},
    GunSkills = {Z = false, X = false}
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

local function VoidHubCreateButton(parent, text, size, position)
    local Button = Instance.new("TextButton")
    Button.Name = "VoidHubBtn_" .. text .. "_RAMAMODE"
    Button.Parent = parent
    Button.BackgroundColor3 = VoidHubConfig.Theme.Accent
    Button.BorderSizePixel = 0
    Button.Position = position or UDim2.new(0, 0, 0, 0)
    Button.Size = size or UDim2.new(1, -20, 0, 40)
    Button.Font = Enum.Font.GothamSemibold
    Button.Text = text
    Button.TextColor3 = VoidHubConfig.Theme.Text
    Button.TextSize = 14
    Button.AutoButtonColor = true
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)
    ButtonCorner.Parent = Button
    
    return Button
end

local function VoidHubCreateToggle(parent, text, stateKey, position)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Name = "VoidHubToggle_" .. text .. "_RAMAMODE"
    ToggleFrame.Parent = parent
    ToggleFrame.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.Position = position
    ToggleFrame.Size = UDim2.new(1, -20, 0, 45)
    
    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(0, 8)
    ToggleCorner.Parent = ToggleFrame
    
    local ToggleLabel = Instance.new("TextLabel")
    ToggleLabel.Name = "VoidHubLabel_RAMAMODE"
    ToggleLabel.Parent = ToggleFrame
    ToggleLabel.BackgroundTransparency = 1
    ToggleLabel.Position = UDim2.new(0, 15, 0, 0)
    ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
    ToggleLabel.Font = Enum.Font.GothamSemibold
    ToggleLabel.Text = text
    ToggleLabel.TextColor3 = VoidHubConfig.Theme.Text
    ToggleLabel.TextSize = 14
    ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "VoidHubToggleBtn_RAMAMODE"
    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = VoidHubState[stateKey] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Position = UDim2.new(1, -60, 0.5, -15)
    ToggleButton.Size = UDim2.new(0, 50, 0, 30)
    ToggleButton.Font = Enum.Font.GothamBold
    ToggleButton.Text = VoidHubState[stateKey] and "ON" or "OFF"
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 12
    
    local ToggleBtnCorner = Instance.new("UICorner")
    ToggleBtnCorner.CornerRadius = UDim.new(0, 15)
    ToggleBtnCorner.Parent = ToggleButton
    
    ToggleButton.MouseButton1Click:Connect(function()
        VoidHubState[stateKey] = not VoidHubState[stateKey]
        ToggleButton.BackgroundColor3 = VoidHubState[stateKey] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        ToggleButton.Text = VoidHubState[stateKey] and "ON" or "OFF"
        
        local tween = VoidHubTween(ToggleButton, {Size = UDim2.new(0, 45, 0, 25)}, 0.1)
        tween:Play()
        tween.Completed:Wait()
        VoidHubTween(ToggleButton, {Size = UDim2.new(0, 50, 0, 30)}, 0.1):Play()
    end)
    
    return ToggleFrame
end

local function VoidHubCreateSection(parent, title, position)
    local Section = Instance.new("Frame")
    Section.Name = "VoidHubSection_" .. title .. "_RAMAMODE"
    Section.Parent = parent
    Section.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    Section.BorderSizePixel = 0
    Section.Position = position
    Section.Size = UDim2.new(1, -20, 0, 200)
    
    local SectionCorner = Instance.new("UICorner")
    SectionCorner.CornerRadius = UDim.new(0, 10)
    SectionCorner.Parent = Section
    
    local SectionTitle = Instance.new("TextLabel")
    SectionTitle.Name = "VoidHubSecTitle_RAMAMODE"
    SectionTitle.Parent = Section
    SectionTitle.BackgroundColor3 = VoidHubConfig.Theme.Accent
    SectionTitle.BorderSizePixel = 0
    SectionTitle.Size = UDim2.new(1, 0, 0, 35)
    SectionTitle.Font = Enum.Font.GothamBold
    SectionTitle.Text = "  " .. title
    SectionTitle.TextColor3 = VoidHubConfig.Theme.Text
    SectionTitle.TextSize = 16
    SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 10)
    TitleCorner.Parent = SectionTitle
    
    local TitleFix = Instance.new("Frame")
    TitleFix.Name = "VoidHubSecFix_RAMAMODE"
    TitleFix.Parent = SectionTitle
    TitleFix.BackgroundColor3 = VoidHubConfig.Theme.Accent
    TitleFix.BorderSizePixel = 0
    TitleFix.Position = UDim2.new(0, 0, 0.7, 0)
    TitleFix.Size = UDim2.new(1, 0, 0.3, 0)
    
    local Content = Instance.new("Frame")
    Content.Name = "VoidHubSecContent_RAMAMODE"
    Content.Parent = Section
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 0, 0, 40)
    Content.Size = UDim2.new(1, 0, 1, -45)
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Parent = Content
    ContentLayout.Padding = UDim.new(0, 8)
    ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    return Section, Content
end

-- Dibuat oleh void - Tab Creation
local VoidHubTabs = {}
local VoidHubTabContents = {}

local function VoidHubCreateTab(name, icon)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = "VoidHubTab_" .. name .. "_RAMAMODE"
    TabButton.Parent = TabContainer
    TabButton.BackgroundColor3 = name == "FarmSettings" and VoidHubConfig.Theme.Accent or VoidHubConfig.Theme.Background
    TabButton.BorderSizePixel = 0
    TabButton.Size = UDim2.new(0, 90, 0, 35)
    TabButton.Font = Enum.Font.GothamSemibold
    TabButton.Text = name
    TabButton.TextColor3 = VoidHubConfig.Theme.Text
    TabButton.TextSize = 12
    TabButton.AutoButtonColor = true
    
    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 8)
    TabCorner.Parent = TabButton
    
    local Content = Instance.new("ScrollingFrame")
    Content.Name = "VoidHubContent_" .. name .. "_RAMAMODE"
    Content.Parent = ContentContainer
    Content.BackgroundTransparency = 1
    Content.Size = UDim2.new(1, 0, 1, 0)
    Content.ScrollBarThickness = 4
    Content.ScrollBarImageColor3 = VoidHubConfig.Theme.Accent
    Content.Visible = name == "FarmSettings"
    Content.CanvasSize = UDim2.new(0, 0, 0, 600)
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Parent = Content
    ContentLayout.Padding = UDim.new(0, 15)
    ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    local Padding = Instance.new("UIPadding")
    Padding.Parent = Content
    Padding.PaddingTop = UDim.new(0, 10)
    Padding.PaddingBottom = UDim.new(0, 20)
    
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
local FarmSettingsContent = VoidHubCreateTab("FarmSettings", "")
local FarmContent = VoidHubCreateTab("Farm", "")
local FruitContent = VoidHubCreateTab("Fruit", "")

-- Dibuat oleh void - Farm Settings Tab
local function VoidHubSetupFarmSettings()
    local container = FarmSettingsContent
    
    local MainSection, MainContent = VoidHubCreateSection(container, "⚙️ Farm Settings", UDim2.new(0, 10, 0, 0))
    MainSection.Size = UDim2.new(1, -20, 0, 250)
    
    VoidHubCreateToggle(MainContent, "Auto Click", "AutoClick", UDim2.new(0, 10, 0, 10))
    VoidHubCreateToggle(MainContent, "Fast Attack", "FastAttack", UDim2.new(0, 10, 0, 65))
    VoidHubCreateToggle(MainContent, "Bring Mob", "BringMob", UDim2.new(0, 10, 0, 120))
    
    local ExtraSection, ExtraContent = VoidHubCreateSection(container, "🔧 Extra Settings", UDim2.new(0, 10, 0, 270))
    ExtraSection.Size = UDim2.new(1, -20, 0, 200)
    
    local DistanceSlider = Instance.new("Frame")
    DistanceSlider.Name = "VoidHubSlider_RAMAMODE"
    DistanceSlider.Parent = ExtraContent
    DistanceSlider.BackgroundColor3 = VoidHubConfig.Theme.Background
    DistanceSlider.BorderSizePixel = 0
    DistanceSlider.Size = UDim2.new(1, -20, 0, 50)
    
    local SliderCorner = Instance.new("UICorner")
    SliderCorner.CornerRadius = UDim.new(0, 8)
    SliderCorner.Parent = DistanceSlider
    
    local SliderLabel = Instance.new("TextLabel")
    SliderLabel.Name = "VoidHubSliderLabel_RAMAMODE"
    SliderLabel.Parent = DistanceSlider
    SliderLabel.BackgroundTransparency = 1
    SliderLabel.Position = UDim2.new(0, 10, 0, 5)
    SliderLabel.Size = UDim2.new(1, -20, 0, 20)
    SliderLabel.Font = Enum.Font.GothamSemibold
    SliderLabel.Text = "Farm Distance: 20"
    SliderLabel.TextColor3 = VoidHubConfig.Theme.Text
    SliderLabel.TextSize = 14
    SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local SliderBar = Instance.new("Frame")
    SliderBar.Name = "VoidHubSliderBar_RAMAMODE"
    SliderBar.Parent = DistanceSlider
    SliderBar.BackgroundColor3 = VoidHubConfig.Theme.Accent
    SliderBar.BorderSizePixel = 0
    SliderBar.Position = UDim2.new(0, 10, 0, 35)
    SliderBar.Size = UDim2.new(0.5, 0, 0, 6)
    
    local BarCorner = Instance.new("UICorner")
    BarCorner.CornerRadius = UDim.new(0, 3)
    BarCorner.Parent = SliderBar
    
    local SliderButton = Instance.new("TextButton")
    SliderButton.Name = "VoidHubSliderBtn_RAMAMODE"
    SliderButton.Parent = DistanceSlider
    SliderButton.BackgroundColor3 = VoidHubConfig.Theme.Text
    SliderButton.BorderSizePixel = 0
    SliderButton.Position = UDim2.new(0.5, -8, 0, 30)
    SliderButton.Size = UDim2.new(0, 16, 0, 16)
    SliderButton.Text = ""
    SliderButton.AutoButtonColor = false
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(1, 0)
    BtnCorner.Parent = SliderButton
    
    VoidHubCreateToggle(ExtraContent, "Auto Haki", "AutoHaki", UDim2.new(0, 10, 0, 70))
end

-- Dibuat oleh void - Farm Tab
local function VoidHubSetupFarm()
    local container = FarmContent
    
    local WeaponSection, WeaponContent = VoidHubCreateSection(container, "⚔️ Weapon Selection", UDim2.new(0, 10, 0, 0))
    WeaponSection.Size = UDim2.new(1, -20, 0, 180)
    
    local SelectedWeaponLabel = Instance.new("TextLabel")
    SelectedWeaponLabel.Name = "VoidHubWeaponLabel_RAMAMODE"
    SelectedWeaponLabel.Parent = WeaponContent
    SelectedWeaponLabel.BackgroundColor3 = VoidHubConfig.Theme.Background
    SelectedWeaponLabel.BorderSizePixel = 0
    SelectedWeaponLabel.Size = UDim2.new(1, -20, 0, 40)
    SelectedWeaponLabel.Font = Enum.Font.GothamSemibold
    SelectedWeaponLabel.Text = "Selected: None"
    SelectedWeaponLabel.TextColor3 = VoidHubConfig.Theme.SubText
    SelectedWeaponLabel.TextSize = 14
    
    local WeaponCorner = Instance.new("UICorner")
    WeaponCorner.CornerRadius = UDim.new(0, 8)
    WeaponCorner.Parent = SelectedWeaponLabel
    
    local WeaponGrid = Instance.new("Frame")
    WeaponGrid.Name = "VoidHubWeaponGrid_RAMAMODE"
    WeaponGrid.Parent = WeaponContent
    WeaponGrid.BackgroundTransparency = 1
    WeaponGrid.Position = UDim2.new(0, 10, 0, 55)
    WeaponGrid.Size = UDim2.new(1, -20, 0, 80)
    
    local GridLayout = Instance.new("UIGridLayout")
    GridLayout.Parent = WeaponGrid
    GridLayout.CellSize = UDim2.new(0.23, -5, 0, 35)
    GridLayout.CellPadding = UDim2.new(0, 5, 0, 5)
    GridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    local weaponTypes = {"Melee", "Gun", "Fruit", "Sword"}
    for _, weapon in ipairs(weaponTypes) do
        local WeaponBtn = VoidHubCreateButton(WeaponGrid, weapon, UDim2.new(0, 0, 0, 0))
        WeaponBtn.Size = UDim2.new(1, 0, 1, 0)
        WeaponBtn.MouseButton1Click:Connect(function()
            VoidHubState.SelectedWeapon = weapon
            SelectedWeaponLabel.Text = "Selected: " .. weapon
            SelectedWeaponLabel.TextColor3 = VoidHubConfig.Theme.Success
            
            VoidHubTween(WeaponBtn, {BackgroundColor3 = VoidHubConfig.Theme.Success}, 0.2):Play()
            wait(0.2)
            VoidHubTween(WeaponBtn, {BackgroundColor3 = VoidHubConfig.Theme.Accent}, 0.2):Play()
        end)
    end
    
    local Divider = Instance.new("Frame")
    Divider.Name = "VoidHubDivider_RAMAMODE"
    Divider.Parent = container
    Divider.BackgroundColor3 = VoidHubConfig.Theme.Accent
    Divider.BorderSizePixel = 0
    Divider.Size = UDim2.new(1, -40, 0, 2)
    
    local FarmSection, FarmContent2 = VoidHubCreateSection(container, "🎯 Auto Farm", UDim2.new(0, 10, 0, 200))
    FarmSection.Size = UDim2.new(1, -20, 0, 320)
    
    VoidHubCreateToggle(FarmContent2, "Auto Farm Level", "AutoFarm", UDim2.new(0, 10, 0, 10))
    VoidHubCreateToggle(FarmContent2, "Auto Farm Katakuri", "AutoFarmKatakuri", UDim2.new(0, 10, 0, 65))
    VoidHubCreateToggle(FarmContent2, "Auto Farm Bone", "AutoFarmBone", UDim2.new(0, 10, 0, 120))
    VoidHubCreateToggle(FarmContent2, "Auto Farm Mastery", "AutoFarmMastery", UDim2.new(0, 10, 0, 175))
    
    local FarmTypeLabel = Instance.new("TextLabel")
    FarmTypeLabel.Name = "VoidHubFarmTypeLabel_RAMAMODE"
    FarmTypeLabel.Parent = FarmContent2
    FarmTypeLabel.BackgroundTransparency = 1
    FarmTypeLabel.Position = UDim2.new(0, 10, 0, 240)
    FarmTypeLabel.Size = UDim2.new(1, -20, 0, 25)
    FarmTypeLabel.Font = Enum.Font.GothamSemibold
    FarmTypeLabel.Text = "Farm Type: None"
    FarmTypeLabel.TextColor3 = VoidHubConfig.Theme.Text
    FarmTypeLabel.TextSize = 14
    FarmTypeLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local SelectTypeBtn = VoidHubCreateButton(FarmContent2, "Select Farm Type", UDim2.new(1, -20, 0, 35), UDim2.new(0, 10, 0, 270))
    
    local TypeModal = Instance.new("Frame")
    TypeModal.Name = "VoidHubTypeModal_RAMAMODE"
    TypeModal.Parent = FarmContent2
    TypeModal.BackgroundColor3 = VoidHubConfig.Theme.Background
    TypeModal.BorderSizePixel = 0
    TypeModal.Position = UDim2.new(0, 10, 0, 240)
    TypeModal.Size = UDim2.new(1, -20, 0, 0)
    TypeModal.ClipsDescendants = true
    TypeModal.Visible = false
    
    local ModalCorner = Instance.new("UICorner")
    ModalCorner.CornerRadius = UDim.new(0, 10)
    ModalCorner.Parent = TypeModal
    
    local ModalLayout = Instance.new("UIListLayout")
    ModalLayout.Parent = TypeModal
    ModalLayout.Padding = UDim.new(0, 5)
    
    local farmTypes = {"Fruit", "Gun"}
    for _, fType in ipairs(farmTypes) do
        local TypeBtn = VoidHubCreateButton(TypeModal, fType, UDim2.new(1, -10, 0, 35))
        TypeBtn.MouseButton1Click:Connect(function()
            VoidHubState.SelectedFarmType = fType
            FarmTypeLabel.Text = "Farm Type: " .. fType
            VoidHubTween(TypeModal, {Size = UDim2.new(1, -20, 0, 0)}, 0.3):Play()
            wait(0.3)
            TypeModal.Visible = false
        end)
    end
    
    SelectTypeBtn.MouseButton1Click:Connect(function()
        TypeModal.Visible = true
        VoidHubTween(TypeModal, {Size = UDim2.new(1, -20, 0, 85)}, 0.3):Play()
    end)
    
    local SkillSection, SkillContent = VoidHubCreateSection(container, "🎮 Settings Skill", UDim2.new(0, 10, 0, 530))
    SkillSection.Size = UDim2.new(1, -20, 0, 280)
    
    local FruitLabel = Instance.new("TextLabel")
    FruitLabel.Name = "VoidHubFruitLabel_RAMAMODE"
    FruitLabel.Parent = SkillContent
    FruitLabel.BackgroundTransparency = 1
    FruitLabel.Size = UDim2.new(1, -20, 0, 25)
    FruitLabel.Font = Enum.Font.GothamBold
    FruitLabel.Text = "Fruit Skills:"
    FruitLabel.TextColor3 = VoidHubConfig.Theme.Text
    FruitLabel.TextSize = 16
    FruitLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local FruitSkillsGrid = Instance.new("Frame")
    FruitSkillsGrid.Name = "VoidHubFruitSkillsGrid_RAMAMODE"
    FruitSkillsGrid.Parent = SkillContent
    FruitSkillsGrid.BackgroundTransparency = 1
    FruitSkillsGrid.Size = UDim2.new(1, -20, 0, 40)
    
    local FruitGridLayout = Instance.new("UIListLayout")
    FruitGridLayout.Parent = FruitSkillsGrid
    FruitGridLayout.FillDirection = Enum.FillDirection.Horizontal
    FruitGridLayout.Padding = UDim.new(0, 10)
    
    local fruitKeys = {"Z", "X", "C", "V", "F"}
    for _, key in ipairs(fruitKeys) do
        local KeyBtn = Instance.new("TextButton")
        KeyBtn.Name = "VoidHubFruitKey_" .. key .. "_RAMAMODE"
        KeyBtn.Parent = FruitSkillsGrid
        KeyBtn.BackgroundColor3 = VoidHubConfig.Theme.Error
        KeyBtn.BorderSizePixel = 0
        KeyBtn.Size = UDim2.new(0, 50, 0, 35)
        KeyBtn.Font = Enum.Font.GothamBold
        KeyBtn.Text = key
        KeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBtn.TextSize = 16
        
        local KeyCorner = Instance.new("UICorner")
        KeyCorner.CornerRadius = UDim.new(0, 8)
        KeyCorner.Parent = KeyBtn
        
        KeyBtn.MouseButton1Click:Connect(function()
            VoidHubState.FruitSkills[key] = not VoidHubState.FruitSkills[key]
            KeyBtn.BackgroundColor3 = VoidHubState.FruitSkills[key] and VoidHubConfig.Theme.Success or VoidHubConfig.Theme.Error
        end)
    end
    
    local SkillDivider = Instance.new("Frame")
    SkillDivider.Name = "VoidHubSkillDivider_RAMAMODE"
    SkillDivider.Parent = SkillContent
    SkillDivider.BackgroundColor3 = VoidHubConfig.Theme.Accent
    SkillDivider.BorderSizePixel = 0
    SkillDivider.Position = UDim2.new(0, 10, 0, 110)
    SkillDivider.Size = UDim2.new(1, -20, 0, 2)
    
    local GunLabel = Instance.new("TextLabel")
    GunLabel.Name = "VoidHubGunLabel_RAMAMODE"
    GunLabel.Parent = SkillContent
    GunLabel.BackgroundTransparency = 1
    GunLabel.Position = UDim2.new(0, 0, 0, 125)
    GunLabel.Size = UDim2.new(1, -20, 0, 25)
    GunLabel.Font = Enum.Font.GothamBold
    GunLabel.Text = "Gun Skills:"
    GunLabel.TextColor3 = VoidHubConfig.Theme.Text
    GunLabel.TextSize = 16
    GunLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local GunSkillsGrid = Instance.new("Frame")
    GunSkillsGrid.Name = "VoidHubGunSkillsGrid_RAMAMODE"
    GunSkillsGrid.Parent = SkillContent
    GunSkillsGrid.BackgroundTransparency = 1
    GunSkillsGrid.Position = UDim2.new(0, 0, 0, 155)
    GunSkillsGrid.Size = UDim2.new(1, -20, 0, 40)
    
    local GunGridLayout = Instance.new("UIListLayout")
    GunGridLayout.Parent = GunSkillsGrid
    GunGridLayout.FillDirection = Enum.FillDirection.Horizontal
    GunGridLayout.Padding = UDim.new(0, 10)
    
    local gunKeys = {"Z", "X"}
    for _, key in ipairs(gunKeys) do
        local KeyBtn = Instance.new("TextButton")
        KeyBtn.Name = "VoidHubGunKey_" .. key .. "_RAMAMODE"
        KeyBtn.Parent = GunSkillsGrid
        KeyBtn.BackgroundColor3 = VoidHubConfig.Theme.Error
        KeyBtn.BorderSizePixel = 0
        KeyBtn.Size = UDim2.new(0, 50, 0, 35)
        KeyBtn.Font = Enum.Font.GothamBold
        KeyBtn.Text = key
        KeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBtn.TextSize = 16
        
        local KeyCorner = Instance.new("UICorner")
        KeyCorner.CornerRadius = UDim.new(0, 8)
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
    
    local RandomSection, RandomContent = VoidHubCreateSection(container, "🎲 Auto Random Fruit", UDim2.new(0, 10, 0, 0))
    RandomSection.Size = UDim2.new(1, -20, 0, 150)
    
    VoidHubCreateToggle(RandomContent, "Auto Random Fruit", "AutoRandomFruit", UDim2.new(0, 10, 0, 10))
    
    local FruitStatus = Instance.new("TextLabel")
    FruitStatus.Name = "VoidHubFruitStatus_RAMAMODE"
    FruitStatus.Parent = RandomContent
    FruitStatus.BackgroundTransparency = 1
    FruitStatus.Position = UDim2.new(0, 10, 0, 70)
    FruitStatus.Size = UDim2.new(1, -20, 0, 30)
    FruitStatus.Font = Enum.Font.GothamSemibold
    FruitStatus.Text = "Status: Waiting..."
    FruitStatus.TextColor3 = VoidHubConfig.Theme.SubText
    FruitStatus.TextSize = 14
    
    local RollButton = VoidHubCreateButton(RandomContent, "Roll Fruit Now", UDim2.new(1, -20, 0, 40), UDim2.new(0, 10, 0, 100))
    RollButton.BackgroundColor3 = VoidHubConfig.Theme.Success
    
    local StorageSection, StorageContent = VoidHubCreateSection(container, "🍎 Fruit Storage", UDim2.new(0, 10, 0, 170))
    StorageSection.Size = UDim2.new(1, -20, 0, 200)
    
    local StoreFruitBtn = VoidHubCreateButton(StorageContent, "Store All Fruits", UDim2.new(1, -20, 0, 40), UDim2.new(0, 10, 0, 10))
    local DropFruitBtn = VoidHubCreateButton(StorageContent, "Drop Current Fruit", UDim2.new(1, -20, 0, 40), UDim2.new(0, 10, 0, 60))
    DropFruitBtn.BackgroundColor3 = VoidHubConfig.Theme.Error
    
    local SniperSection, SniperContent = VoidHubCreateSection(container, "🎯 Fruit Sniper", UDim2.new(0, 10, 0, 380))
    SniperSection.Size = UDim2.new(1, -20, 0, 180)
    
    local TargetFruitInput = Instance.new("TextBox")
    TargetFruitInput.Name = "VoidHubTargetFruit_RAMAMODE"
    TargetFruitInput.Parent = SniperContent
    TargetFruitInput.BackgroundColor3 = VoidHubConfig.Theme.Background
    TargetFruitInput.BorderSizePixel = 0
    TargetFruitInput.Position = UDim2.new(0, 10, 0, 10)
    TargetFruitInput.Size = UDim2.new(1, -20, 0, 40)
    TargetFruitInput.Font = Enum.Font.GothamSemibold
    TargetFruitInput.PlaceholderText = "Enter Fruit Name..."
    TargetFruitInput.Text = ""
    TargetFruitInput.TextColor3 = VoidHubConfig.Theme.Text
    TargetFruitInput.TextSize = 14
    
    local InputCorner = Instance.new("UICorner")
    InputCorner.CornerRadius = UDim.new(0, 8)
    InputCorner.Parent = TargetFruitInput
    
    local SniperToggle = VoidHubCreateToggle(SniperContent, "Auto Snipe Fruit", "AutoSnipeFruit", UDim2.new(0, 10, 0, 60))
    
    local SniperStatus = Instance.new("TextLabel")
    SniperStatus.Name = "VoidHubSniperStatus_RAMAMODE"
    SniperStatus.Parent = SniperContent
    SniperStatus.BackgroundTransparency = 1
    SniperStatus.Position = UDim2.new(0, 10, 0, 120)
    SniperStatus.Size = UDim2.new(1, -20, 0, 25)
    SniperStatus.Font = Enum.Font.Gotham
    SniperStatus.Text = "Looking for: None"
    SniperStatus.TextColor3 = VoidHubConfig.Theme.SubText
    SniperStatus.TextSize = 12
end

-- Dibuat oleh void - Animation Functions
local function VoidHubOpenUI()
    MainFrame.Visible = true
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    
    local tween = VoidHubTween(MainFrame, {
        Size = UDim2.new(0, 400, 0, 550),
        Position = UDim2.new(0.5, -200, 0.5, -275)
    }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    
    tween:Play()
    
    VoidHubTween(LogoButton, {Size = UDim2.new(0, 0, 0, 0)}, 0.3):Play()
end

local function VoidHubCloseUI()
    local tween = VoidHubTween(MainFrame, {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    }, 0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    
    tween:Play()
    tween.Completed:Wait()
    MainFrame.Visible = false
    
    LogoButton.Size = UDim2.new(0, 0, 0, 0)
    VoidHubTween(LogoButton, {Size = UDim2.new(0, 80, 0, 80)}, 0.3, Enum.EasingStyle.Back):Play()
end

local function VoidHubMinimizeUI()
    local tween = VoidHubTween(MainFrame, {
        Position = UDim2.new(0.5, -200, 1, 0),
        Size = UDim2.new(0, 400, 0, 0)
    }, 0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    
    tween:Play()
    tween.Completed:Wait()
    MainFrame.Visible = false
    
    LogoButton.Size = UDim2.new(0, 0, 0, 0)
    VoidHubTween(LogoButton, {Size = UDim2.new(0, 80, 0, 80)}, 0.3, Enum.EasingStyle.Back):Play()
end

-- Dibuat oleh void - Event Connections
LogoButton.MouseButton1Click:Connect(VoidHubOpenUI)
CloseButton.MouseButton1Click:Connect(VoidHubCloseUI)
MinimizeButton.MouseButton1Click:Connect(VoidHubMinimizeUI)

-- Dibuat oleh void - Dragging System
local dragging = false
local dragInput, dragStart, startPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Dibuat oleh void - Auto Farm Logic
local function VoidHubAutoFarmLogic()
    while wait(0.1) do
        if VoidHubState.AutoClick then
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(0, 0))
        end
        
        if VoidHubState.FastAttack then
            pcall(function()
                local CombatFramework = require(game:GetService("ReplicatedStorage").CombatFramework)
                local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
                CameraShaker:Stop()
                CombatFramework.activeController.attacking = false
                CombatFramework.activeController.timeToNextAttack = 0
                CombatFramework.activeController.increment = 3
                CombatFramework.activeController.hitboxMagnitude = 100
            end)
        end
        
        if VoidHubState.BringMob then
            pcall(function()
                for _, v in pairs(workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        local distance = (v.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).Magnitude
                        if distance < 300 then
                            v.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -10)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end
            end)
        end
    end
end

-- Dibuat oleh void - Fruit Logic
local function VoidHubFruitLogic()
    while wait(1) do
        if VoidHubState.AutoRandomFruit then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end)
        end
    end
end

-- Dibuat oleh void - Start Logic
spawn(VoidHubAutoFarmLogic)
spawn(VoidHubFruitLogic)

-- Dibuat oleh void - Initialize UI
VoidHubSetupFarmSettings()
VoidHubSetupFarm()
VoidHubSetupFruit()

-- Dibuat oleh void - Notification System
local function VoidHubShowNotification(text, duration)
    local Notif = Instance.new("Frame")
    Notif.Name = "VoidHubNotif_RAMAMODE"
    Notif.Parent = ScreenGui
    Notif.BackgroundColor3 = VoidHubConfig.Theme.Secondary
    Notif.BorderSizePixel = 0
    Notif.Position = UDim2.new(0.5, -150, 0, -80)
    Notif.Size = UDim2.new(0, 300, 0, 60)
    
    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0, 10)
    NotifCorner.Parent = Notif
    
    local NotifText = Instance.new("TextLabel")
    NotifText.Name = "VoidHubNotifText_RAMAMODE"
    NotifText.Parent = Notif
    NotifText.BackgroundTransparency = 1
    NotifText.Size = UDim2.new(1, 0, 1, 0)
    NotifText.Font = Enum.Font.GothamSemibold
    NotifText.Text = text
    NotifText.TextColor3 = VoidHubConfig.Theme.Text
    NotifText.TextSize = 14
    
    VoidHubTween(Notif, {Position = UDim2.new(0.5, -150, 0, 20)}, 0.5, Enum.EasingStyle.Back):Play()
    wait(duration or 3)
    VoidHubTween(Notif, {Position = UDim2.new(0.5, -150, 0, -80)}, 0.5):Play()
    wait(0.5)
    Notif:Destroy()
end

-- Dibuat oleh void - Welcome Notification
wait(1)
VoidHubShowNotification("VoidHub v6.0 Loaded - Welcome " .. VoidHubConfig.User, 3)

-- Dibuat oleh void - System Info
print("Dibuat oleh void - VoidHub System initialized")
print("VoidHub v6.0 DARK - Blox Fruits Script")
print("User: RAMAMODE")
print("Creator: @voidgfx0_ | Telegram: https://t.me/vounban")
