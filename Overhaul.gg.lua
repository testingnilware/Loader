local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local selectedTab = nil
local Value
local moveConnection
local releaseConnection

local function tweenUI(state, obj, val, length)
	ts:Create(obj, TweenInfo.new(length, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {[state] = val}):Play()
end

function RandomCharacters(length)
	local STR = ''

	for i = 1, length do
		STR = STR .. string.char(math.random(65,90))
	end

	return STR
end

local library = {}

function library:CreateWindow(name)
	for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
		if v:FindFirstChild("MainHolder") then
			v:Destroy()
		end
	end
	local Hub = Instance.new("ScreenGui")
	local MainHolder = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local MainInside = Instance.new("Frame")
	local ContainerFolder = Instance.new("Folder")
	local Clones = Instance.new("Folder")
	local Top = Instance.new("ImageLabel")
	local TopTitle = Instance.new("TextLabel")
	local TopLine = Instance.new("Frame")
	local TopButtonHolder = Instance.new("Frame")
	local UIListLayout_8 = Instance.new("UIListLayout")
	local SettingsButton = Instance.new("ImageButton")
	local UserButton = Instance.new("ImageButton")
	local CloseButton = Instance.new("ImageButton")
	local MenuButton = Instance.new("ImageButton")
	local TabMenu = Instance.new("Frame")
	local Menu = Instance.new("Frame")
	local UICorner_32 = Instance.new("UICorner")
	local Top_2 = Instance.new("Frame")
	local TopBarLine = Instance.new("Frame")
	local MenuCloseButton = Instance.new("ImageButton")
	local Holder = Instance.new("Frame")
	local UIPadding_3 = Instance.new("UIPadding")
	local UIListLayout_9 = Instance.new("UIListLayout")
	local Tab = Instance.new("TextButton")
	local UICorner_33 = Instance.new("UICorner")
	local UIPadding_4 = Instance.new("UIPadding")

	Hub.Name = RandomCharacters(math.random(16, 64))
	Hub.Parent = game:GetService("CoreGui")
	Hub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainHolder.Name = "MainHolder"
	MainHolder.Parent = Hub
	MainHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	MainHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	MainHolder.BorderSizePixel = 0
	MainHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainHolder.Size = UDim2.new(0, 480, 0, 380)
	MainHolder.Selectable = true
	MainHolder.Active = true
	MainHolder.Draggable = true

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = MainHolder

	MainInside.Name = "MainInside"
	MainInside.Parent = MainHolder
	MainInside.AnchorPoint = Vector2.new(0.5, 0.5)
	MainInside.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	MainInside.BackgroundTransparency = 1.000
	MainInside.BorderSizePixel = 0
	MainInside.ClipsDescendants = true
	MainInside.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainInside.Size = UDim2.new(1, 0, 1, 0)

	ContainerFolder.Name = "ContainerFolder"
	ContainerFolder.Parent = MainInside

	Clones.Name = "CloneFolder"
	Clones.Parent = MainInside

	Top.Name = "Top"
	Top.Parent = MainInside
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 40)
	Top.ZIndex = 3
	Top.Image = "rbxassetid://6276641225"
	Top.ImageColor3 = Color3.fromRGB(30, 30, 30)
	Top.ScaleType = Enum.ScaleType.Slice
	Top.SliceCenter = Rect.new(256, 256, 256, 256)
	Top.SliceScale = 0.020

	TopTitle.Name = "TopTitle"
	TopTitle.Parent = Top
	TopTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopTitle.BackgroundTransparency = 1.000
	TopTitle.Position = UDim2.new(0, 33, 0.200000003, 0)
	TopTitle.Size = UDim2.new(0, 200, 0, 25)
	TopTitle.Font = Enum.Font.GothamSemibold
	TopTitle.Text = name
	TopTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopTitle.TextScaled = true
	TopTitle.TextSize = 14.000
	TopTitle.TextWrapped = true

	TopLine.Name = "TopLine"
	TopLine.Parent = Top
	TopLine.AnchorPoint = Vector2.new(0, 1)
	TopLine.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
	TopLine.BackgroundTransparency = 0.900
	TopLine.BorderSizePixel = 0
	TopLine.Position = UDim2.new(0, 0, 1, 0)
	TopLine.Size = UDim2.new(1, 0, 0, 1)

	TopButtonHolder.Name = "TopButtonHolder"
	TopButtonHolder.Parent = Top
	TopButtonHolder.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
	TopButtonHolder.BackgroundTransparency = 1.000
	TopButtonHolder.BorderSizePixel = 0
	TopButtonHolder.Position = UDim2.new(0, 355, 0.200000003, 0)
	TopButtonHolder.Size = UDim2.new(0.239999995, 0, 0.550000012, 1)

	UIListLayout_8.Parent = TopButtonHolder
	UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_8.Padding = UDim.new(0, 5)

	SettingsButton.Name = "SettingsButton"
	SettingsButton.Parent = TopButtonHolder
	SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsButton.BackgroundTransparency = 1.000
	SettingsButton.BorderSizePixel = 0
	SettingsButton.Position = UDim2.new(0, 5, 0.200000003, 0)
	SettingsButton.Size = UDim2.new(0, 22, 0, 22)
	SettingsButton.Image = "rbxassetid://7734053495"
	SettingsButton.ImageTransparency = 0.4

	UserButton.Name = "UserButton"
	UserButton.Parent = TopButtonHolder
	UserButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserButton.BackgroundTransparency = 1.000
	UserButton.BorderSizePixel = 0
	UserButton.Position = UDim2.new(0, 5, 0.200000003, 0)
	UserButton.Size = UDim2.new(0, 22, 0, 22)
	UserButton.Image = "rbxassetid://7743875962"
	UserButton.ImageTransparency = 0.4

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = TopButtonHolder
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0, 5, 0.200000003, 0)
	CloseButton.Size = UDim2.new(0, 22, 0, 22)
	CloseButton.Image = "rbxassetid://7743878857"
	CloseButton.ImageTransparency = 0.4

	MenuButton.Name = "MenuButton"
	MenuButton.Parent = Top
	MenuButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuButton.BackgroundTransparency = 1.000
	MenuButton.BorderSizePixel = 0
	MenuButton.Position = UDim2.new(0, 5, 0.219999999, 0)
	MenuButton.Size = UDim2.new(0, 22, 0, 22)
	MenuButton.Image = "rbxassetid://7733993211"
	MenuButton.ImageTransparency = 0.4

	TabMenu.Name = "TabMenu"
	TabMenu.Parent = MainInside
	TabMenu.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
	TabMenu.BackgroundTransparency = 1.000
	TabMenu.Position = UDim2.new(-0.370000005, -8, 0, 0)
	TabMenu.Size = UDim2.new(0.370000005, 0, 1, 0)
	TabMenu.ZIndex = 99

	Menu.Name = "Menu"
	Menu.Parent = TabMenu
	Menu.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
	Menu.Size = UDim2.new(1, 0, 1, 0)
	Menu.ZIndex = 99

	UICorner_32.CornerRadius = UDim.new(0, 6)
	UICorner_32.Parent = Menu

	Top_2.Name = "Top"
	Top_2.Parent = Menu
	Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top_2.BackgroundTransparency = 1.000
	Top_2.BorderSizePixel = 0
	Top_2.Size = UDim2.new(1, 0, 0, 40)
	Top_2.ZIndex = 3

	TopBarLine.Name = "TopBarLine"
	TopBarLine.Parent = Top_2
	TopBarLine.AnchorPoint = Vector2.new(0, 1)
	TopBarLine.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
	TopBarLine.BackgroundTransparency = 0.900
	TopBarLine.BorderSizePixel = 0
	TopBarLine.Position = UDim2.new(0, 0, 1, 0)
	TopBarLine.Size = UDim2.new(1, 0, 0, 1)

	MenuCloseButton.Name = "MenuCloseButton"
	MenuCloseButton.Parent = Top_2
	MenuCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuCloseButton.BackgroundTransparency = 1.000
	MenuCloseButton.BorderSizePixel = 0
	MenuCloseButton.Position = UDim2.new(0, 5, 0.200000003, 0)
	MenuCloseButton.Size = UDim2.new(0, 22, 0, 22)
	MenuCloseButton.Image = "rbxassetid://7743878857"
	MenuCloseButton.ImageTransparency = 0.4

	Holder.Name = "Holder"
	Holder.Parent = Menu
	Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Holder.BackgroundTransparency = 1.000
	Holder.Position = UDim2.new(0, 0, 0, 40)
	Holder.Size = UDim2.new(1, 0, 1, -40)

	UIPadding_3.Parent = Holder
	UIPadding_3.PaddingTop = UDim.new(0, 7)

	UIListLayout_9.Parent = Holder
	UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder

	Tab.Name = "Tab"
	Tab.Parent = Clones
	Tab.Visible = false
	Tab.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	Tab.Size = UDim2.new(0.899999976, 0, 0, 30)
	Tab.AutoButtonColor = false
	Tab.Font = Enum.Font.GothamSemibold
	Tab.Text = "Tab"
	Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
	Tab.TextSize = 14.000
	Tab.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_33.CornerRadius = UDim.new(0, 6)
	UICorner_33.Parent = Tab

	UIPadding_4.Parent = Tab
	UIPadding_4.PaddingLeft = UDim.new(0, 10)

	MenuButton.MouseButton1Click:Connect(function()
		tweenUI("Position", TabMenu, UDim2.new(0.02,-10, 0,0,0), 0.1)
	end)

	MenuCloseButton.MouseButton1Click:Connect(function()
		tweenUI("Position", TabMenu, UDim2.new(-0.37,-8, 0,0,0), 0.1)
	end)

	for _,v in pairs(MainHolder:GetDescendants()) do
		if v:IsA("ImageButton") then
			v.MouseEnter:Connect(function()
				tweenUI("ImageTransparency", v, 0, 0.1)
			end)
			v.MouseLeave:Connect(function()
				tweenUI("ImageTransparency", v, 0.4, 0.1)
			end)
		end
	end

	CloseButton.MouseButton1Click:Connect(function()
		MainHolder.Visible = false
	end)

	uis.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightShift then
			MainHolder.Visible = not MainHolder.Visible 
		end
	end)

	local containers = {}

	function containers:CreateContainer(name)
		local Container = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")

		Container.Name = name
		Container.Parent = ContainerFolder
		Container.Active = true
		Container.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		Container.BorderSizePixel = 0
		Container.BackgroundTransparency = 1
		Container.Position = UDim2.new(0, 0, 0, 42)
		Container.Selectable = false
		Container.Size = UDim2.new(1, 0, 1, -42)
		Container.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		Container.ScrollBarThickness = 4
		Container.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

		UIListLayout.Parent = Container
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 12)

		UIPadding.Parent = Container
		UIPadding.PaddingBottom = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 16)

        spawn(function()
            while true do
                Container.CanvasSize = UDim2.new(0.9, 0, 0, UIListLayout.AbsoluteContentSize.Y + 30)
                task.wait()
            end
        end)

		if selectedTab == nil then
			selectedTab = name
		end

		local tabClone = Tab:Clone()

		spawn(function()
			while true do
				if selectedTab == name then
					tabClone.BackgroundTransparency = 0
					tabClone.TextTransparency = 0
				else
					tabClone.BackgroundTransparency = 1
					tabClone.TextTransparency = 0.4
				end
				task.wait(.1)
			end
		end)

		tabClone.Name = name
		tabClone.Text = name
		tabClone.Parent = Holder
		tabClone.Visible = true

		for _,v in pairs(ContainerFolder:GetChildren()) do
			if selectedTab == v.Name then
				v.Visible = true
			else
				v.Visible = false
			end
		end

		tabClone.MouseButton1Click:Connect(function()
			for _,v in pairs(ContainerFolder:GetChildren()) do
				selectedTab = tabClone.Name
				tweenUI("Position", TabMenu, UDim2.new(-0.37,-8, 0,0,0), 0.1)
				if tabClone.Name == v.Name then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end)

		local sections = {}

		function sections:CreateSection(name)
			local Section = Instance.new("Frame")
			local SectionTitle = Instance.new("TextLabel")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local ButtonTitle = Instance.new("TextLabel")

			Section.Name = "Section"
			Section.Parent = Container
			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Section.BackgroundTransparency = 1.000
			Section.Size = UDim2.new(0.9,0, 0,0)

			SectionTitle.Name = "SectionTitle"
			SectionTitle.Parent = Section
			SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionTitle.BackgroundTransparency = 1.000
			SectionTitle.Size = UDim2.new(1,0, 0, 10)
			SectionTitle.Font = Enum.Font.GothamSemibold
			SectionTitle.Text = name
			SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionTitle.TextSize = 12.000
			SectionTitle.TextTransparency = 0.380
			SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

			UIListLayout_2.Parent = Section
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.Padding = UDim.new(0, 6)

            spawn(function()
                while true do
                    Section.Size = UDim2.new(0.9, 0, 0, UIListLayout_2.AbsoluteContentSize.Y)
                    task.wait()
                end
            end)

			local sectionExtra = {}

			function sectionExtra:CreateButton(name, callback)
				name = name or "New Button!"
				callback = callback or function() end

				local Button = Instance.new("TextButton")
				local UICorner_2 = Instance.new("UICorner")
				local ButtonTitle = Instance.new("TextLabel")

				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Button.ClipsDescendants = true
				Button.Size = UDim2.new(1, 0, 0, 32)
				Button.AutoButtonColor = false
				Button.Font = Enum.Font.SourceSans
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.TextTransparency = 1.000
				Button.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = Button

				ButtonTitle.Name = "Title"
				ButtonTitle.Parent = Button
				ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonTitle.BackgroundTransparency = 1.000
				ButtonTitle.Position = UDim2.new(0, 10, 0, 0)
				ButtonTitle.Size = UDim2.new(1, -10, 1, 0)
				ButtonTitle.Font = Enum.Font.GothamSemibold
				ButtonTitle.Text = name
				ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonTitle.TextSize = 14.000
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

				Button.MouseButton1Click:Connect(function()
					tweenUI("Size", Button, UDim2.new(.95, 0, 0, 28), 0.1)
					task.wait(0.1)
					tweenUI("Size", Button, UDim2.new(1, 0, 0, 32), 0.1)
					if name == "Copy Discord" then
						ButtonTitle.Text = "Copied!"
						task.wait(1)
						ButtonTitle.Text = name
					end
					pcall(callback)
				end)
			end

			function sectionExtra:CreateToggle(name, callback)
				local actions = {}
				local toggled = false

				name = name or "New Toggle!"

				callback = callback or function() end

				local ToggleButton = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local ToggleText = Instance.new("TextLabel")
				local ToggleFrame = Instance.new("ImageLabel")
				local ToggleTween = Instance.new("ImageLabel")

				ToggleButton.Name = "Toggle"
				ToggleButton.Parent = Section
				ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				ToggleButton.Size = UDim2.new(1, 0, 0, 32)
				ToggleButton.AutoButtonColor = false
				ToggleButton.Font = Enum.Font.SourceSans
				ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.TextSize = 14.000
				ToggleButton.TextTransparency = 1.000
				ToggleButton.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = ToggleButton

				ToggleText.Name = "ToggleText"
				ToggleText.Parent = ToggleButton
				ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.Position = UDim2.new(0, 10, 0, 0)
				ToggleText.Size = UDim2.new(0, 1, 1, 0)
				ToggleText.Font = Enum.Font.GothamSemibold
				ToggleText.Text = name
				ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.TextSize = 14.000
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left

				ToggleFrame.Name = "ToggleFrame"
				ToggleFrame.Parent = ToggleButton
				ToggleFrame.AnchorPoint = Vector2.new(1, 0.5)
				ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				ToggleFrame.BackgroundTransparency = 1.000
				ToggleFrame.Position = UDim2.new(1, -5, 0.5, 0)
				ToggleFrame.Size = UDim2.new(0, 40, 0, 20)
				ToggleFrame.Image = "rbxassetid://3570695787"
				ToggleFrame.ImageColor3 = Color3.fromRGB(22, 22, 22)
				ToggleFrame.ScaleType = Enum.ScaleType.Slice
				ToggleFrame.SliceCenter = Rect.new(100, 100, 100, 100)
				ToggleFrame.SliceScale = 0.667

				ToggleTween.Name = "ToggleTween"
				ToggleTween.Parent = ToggleFrame
				ToggleTween.AnchorPoint = Vector2.new(1, 0.5)
				ToggleTween.BackgroundColor3 = Color3.fromRGB(25, 255, 44)
				ToggleTween.BackgroundTransparency = 1.000
				ToggleTween.Position = UDim2.new(0.5, -3,0.5, 0)
				ToggleTween.Size = UDim2.new(0.349999994, 0, 0.699999988, 0)
				ToggleTween.Image = "rbxassetid://3570695787"
				ToggleTween.ImageColor3 = Color3.fromRGB(255, 55, 37)
				ToggleTween.ScaleType = Enum.ScaleType.Slice
				ToggleTween.SliceCenter = Rect.new(100, 100, 100, 100)
				ToggleTween.SliceScale = 0.667

				ToggleButton.MouseButton1Click:Connect(function()
					toggled = not toggled
					if toggled then
						tweenUI("ImageColor3", ToggleTween, Color3.fromRGB(46, 255, 88), 0.1)
						tweenUI("ImageColor3", ToggleFrame, Color3.fromRGB(0, 145, 255), 0.1)
					else
						tweenUI("ImageColor3", ToggleTween, Color3.fromRGB(255, 55, 37), 0.1)
						tweenUI("ImageColor3", ToggleFrame, Color3.fromRGB(22, 22, 22), 0.1)
					end
					ToggleTween:TweenPosition(toggled and UDim2.new(1, -3,0.5, 0) or UDim2.new(0.5, -3,0.5, 0), "InOut", "Linear", 0.1)
					pcall(callback, toggled)
					tweenUI("Size", ToggleButton, UDim2.new(.95, 0, 0, 28), 0.1)
					task.wait(0.1)
					tweenUI("Size", ToggleButton, UDim2.new(1, 0, 0, 32), 0.1)
				end)        
			end

			function sectionExtra:CreateSlider(text, minvalue, maxvalue, callback)
				text = text or "New Slider!"
				minvalue = minvalue or 0
				maxvalue = maxvalue or 100

				callback = callback or function() end

				local SliderButton = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local SliderText = Instance.new("TextLabel")
				local SliderValue = Instance.new("TextLabel")
				local SliderFrame = Instance.new("ImageLabel")
				local SliderClip = Instance.new("ImageLabel")

				SliderButton.Name = "SliderButton"
				SliderButton.Parent = Section
				SliderButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				SliderButton.Size = UDim2.new(1, 0, 0, 32)
				SliderButton.AutoButtonColor = false
				SliderButton.Font = Enum.Font.SourceSans
				SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderButton.TextSize = 14.000
				SliderButton.TextTransparency = 1.000
				SliderButton.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = SliderButton

				SliderText.Name = "SliderText"
				SliderText.Parent = SliderButton
				SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.BackgroundTransparency = 1.000
				SliderText.Position = UDim2.new(0, 10, 0, 0)
				SliderText.Size = UDim2.new(0, 1, 0.800000012, 0)
				SliderText.Font = Enum.Font.Gotham
				SliderText.Text = text
				SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.TextSize = 14.000
				SliderText.TextXAlignment = Enum.TextXAlignment.Left

				SliderValue.Name = "SliderValue"
				SliderValue.Parent = SliderButton
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency = 1.000
				SliderValue.Position = UDim2.new(0, 420, 0, 0)
				SliderValue.Size = UDim2.new(0, 1, 0.800000012, 0)
				SliderValue.Font = Enum.Font.Gotham
				SliderValue.Text = minvalue
				SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize = 14.000
				SliderValue.TextXAlignment = Enum.TextXAlignment.Right

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = SliderButton
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				SliderFrame.BackgroundTransparency = 1.000
				SliderFrame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
				SliderFrame.Size = UDim2.new(0, 400, 0, 4)
				SliderFrame.Image = "rbxassetid://3570695787"
				SliderFrame.ImageColor3 = Color3.fromRGB(22, 22, 22)
				SliderFrame.ScaleType = Enum.ScaleType.Slice
				SliderFrame.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderFrame.SliceScale = 0.667

				SliderClip.Name = "SliderFrame"
				SliderClip.Parent = SliderFrame
				SliderClip.BackgroundColor3 = Color3.fromRGB(0, 145, 255)
				SliderClip.BackgroundTransparency = 1.000
				SliderClip.Size = UDim2.new(0, 0, 1, 0)
				SliderClip.Image = "rbxassetid://3570695787"
				SliderClip.ImageColor3 = Color3.fromRGB(0, 145, 255)
				SliderClip.ScaleType = Enum.ScaleType.Slice
				SliderClip.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderClip.SliceScale = 0.667

				SliderButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 400) * SliderClip.AbsoluteSize.X) + tonumber(minvalue)) or 0
					pcall(function()
						callback(Value)
						SliderValue.Text = Value
					end)
                    tweenUI("Size", SliderClip, UDim2.new(0, math.clamp(mouse.X - SliderClip.AbsolutePosition.X, 0, 400), 0, 4), 0.1)
					moveConnection = mouse.Move:Connect(function()
						SliderValue.Text = Value
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 400) * SliderClip.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
							SliderValue.Text = Value
						end)
                        tweenUI("Size", SliderClip, UDim2.new(0, math.clamp(mouse.X - SliderClip.AbsolutePosition.X, 0, 400), 0, 4), 0.1)
					end)
					releaseConnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 400) * SliderClip.AbsoluteSize.X) + tonumber(minvalue))
							pcall(function()
								callback(Value)
								SliderValue.Text = Value
							end)
                            tweenUI("Size", SliderClip, UDim2.new(0, math.clamp(mouse.X - SliderClip.AbsolutePosition.X, 0, 400), 0, 4), 0.1)
							moveConnection:Disconnect()
							releaseConnection:Disconnect()
						end
					end)
				end)
			end

            function sectionExtra:CreateDropdown(name, table, callback)
                callback = callback or function() end
                list = list or {}
                name = name or "New Dropdown!"
                
                local dropped = false
                local Dropdown = Instance.new("Frame")
                local Btn = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local DropdownText = Instance.new("TextLabel")
                local DropdownIcon = Instance.new("ImageLabel")
                local UICorner_2 = Instance.new("UICorner")
                local Holder = Instance.new("Frame")
                local UIPadding = Instance.new("UIPadding")
                local UIListLayout_3 = Instance.new("UIListLayout")

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = Section
                Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Dropdown.BorderSizePixel = 0
                Dropdown.BackgroundTransparency = 1
                Dropdown.Size = UDim2.new(1, 0, 0, 32)
                Dropdown.ClipsDescendants = true

                Btn.Name = "Btn"
                Btn.Parent = Dropdown
                Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Btn.BackgroundTransparency = 0
                Btn.AnchorPoint = Vector2.new(0.5, 0)
                Btn.Position = UDim2.new(0.5,0, 0,0)
                Btn.Size = UDim2.new(1, 0, 0, 32)
                Btn.AutoButtonColor = false
                Btn.Font = Enum.Font.SourceSans
                Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
                Btn.TextSize = 14.000
                Btn.TextTransparency = 1.000
                Btn.TextXAlignment = Enum.TextXAlignment.Left

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Btn

                DropdownText.Name = "DropdownText"
                DropdownText.Parent = Btn
                DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.BackgroundTransparency = 1.000
                DropdownText.Position = UDim2.new(0, 10, 0, 0)
                DropdownText.Size = UDim2.new(0, 1, 1, 0)
                DropdownText.Font = Enum.Font.GothamSemibold
                DropdownText.Text = name
                DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.TextSize = 14.000
                DropdownText.TextXAlignment = Enum.TextXAlignment.Left

                DropdownIcon.Name = "DropdownIcon"
                DropdownIcon.Parent = Btn
                DropdownIcon.AnchorPoint = Vector2.new(1, 0.5)
                DropdownIcon.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                DropdownIcon.BackgroundTransparency = 1.000
                DropdownIcon.Position = UDim2.new(1, -5, 0.5, 0)
                DropdownIcon.Size = UDim2.new(0, 20, 0, 20)
                DropdownIcon.Image = "rbxassetid://7733919605"
                DropdownIcon.ImageTransparency = 0.400
                DropdownIcon.ScaleType = Enum.ScaleType.Fit
                DropdownIcon.SliceCenter = Rect.new(100, 100, 100, 100)
                DropdownIcon.SliceScale = 0.667

                Holder.Name = "Holder"
                Holder.Parent = Dropdown
                Holder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Holder.BackgroundTransparency = 1.000
                Holder.BorderSizePixel = 0
                Holder.Position = UDim2.new(0, 0, 0, 30)
                Holder.Size = UDim2.new(1, 0, 0, 0)
                Holder.ClipsDescendants = true

                UIPadding.Parent = Holder
                UIPadding.PaddingBottom = UDim.new(0, 10)
                UIPadding.PaddingTop = UDim.new(0, 9)

                UIListLayout_3.Parent = Holder
                UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 6)

                Btn.MouseButton1Click:Connect(function()
                    if not dropped then
                        dropped = true
                        Holder.Visible = true
                        tweenUI("Rotation", DropdownIcon, 180, .1)
                        tweenUI("Size", Holder, UDim2.new(1, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 6), .1)
                        tweenUI("Size", Dropdown, UDim2.new(1, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 32), .1)
                        task.wait(.1)
                        Dropdown.ClipsDescendants = false
                        Holder.ClipsDescendants = false
                    else
                        dropped = false
                        tweenUI("Rotation", DropdownIcon, 0, .1)
                        tweenUI("Size", Holder, UDim2.new(1, 0, 0, 0), .1)
                        tweenUI("Size", Dropdown, UDim2.new(1, 0, 0, 32), .1)
                        task.wait(.1)
                        Holder.ClipsDescendants = true
                        Dropdown.ClipsDescendants = true
                        Holder.Visible = false
                    end
                end)

                Btn.MouseButton1Click:Connect(function()
                    tweenUI("Size", Btn, UDim2.new(.95, 0, 0, 28), 0.1)
					task.wait(0.1)
					tweenUI("Size", Btn, UDim2.new(1, 0, 0, 32), 0.1)
                end)

                for _,v in next, table do
                    local Option = Instance.new("TextButton")
                    local UICorner = Instance.new("UICorner")
                    local OptionText = Instance.new("TextLabel")

                    Option.Name = "Option"
                    Option.Parent = Holder
                    Option.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    Option.BorderSizePixel = 0
                    Option.Size = UDim2.new(1, 0, 0, 25)
                    Option.AutoButtonColor = false
                    Option.Font = Enum.Font.SourceSans
                    Option.TextColor3 = Color3.fromRGB(0, 0, 0)
                    Option.TextSize = 14.000
                    Option.TextTransparency = 1.000
                    Option.TextXAlignment = Enum.TextXAlignment.Left

                    UICorner.CornerRadius = UDim.new(0, 5)
                    UICorner.Parent = Option

                    OptionText.Name = "OptionText"
                    OptionText.Parent = Option
                    OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    OptionText.BackgroundTransparency = 1.000
                    OptionText.Position = UDim2.new(0, 10, 0, 0)
                    OptionText.Size = UDim2.new(0, 1, 1, 0)
                    OptionText.Font = Enum.Font.GothamSemibold
                    OptionText.Text = tostring(v)
                    OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
                    OptionText.TextSize = 14.000
                    OptionText.TextXAlignment = Enum.TextXAlignment.Left

                    Option.MouseButton1Click:Connect(function()
                        DropdownText.Text = name .. " - " .. tostring(v)
                        pcall(callback, v)
                        dropped = false
                        tweenUI("Size", Holder, UDim2.new(1, 0, 0, 0), .1)
                        tweenUI("Size", Dropdown, UDim2.new(1, 0, 0, 32), .1)
                        tweenUI("Rotation", DropdownIcon, 0, .1)
                        task.wait(.1)
                        Holder.ClipsDescendants = true
                        Dropdown.ClipsDescendants = true
                        Holder.Visible = false
                    end)
                end
            end
			return sectionExtra
		end
		return sections
	end
	return containers
end

return library
