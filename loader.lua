-- some math
local X = workspace.CurrentCamera.ViewportSize.X
local Y = workspace.CurrentCamera.ViewportSize.Y
local diff = X - Y
if diff < 0 then
	return
end
local FrameSize
if diff > 700 then
	FrameSize = UDim2.new(0.5, 0, 0.4, 0)
elseif diff > 500 then
	FrameSize = UDim2.new(0.8, 0, (diff * (X / Y) / 1000) - 0.1, 0)
elseif diff > 400 then
	FrameSize = UDim2.new(0.8, 0, diff * (X / Y) / 1000, 0)
else
	FrameSize = UDim2.new(0.8, 0, 0.7, 0)
end


-- headhunter android ui

local headhunter = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

headhunter.Name = "headhunter"
headhunter.Parent = game:GetService("CoreGui")
headhunter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
headhunter.ResetOnSpawn = false

Frame.Parent = headhunter
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.1, 0, 0.15, 0)
Frame.Size = FrameSize
Frame.Active = true
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(1, 0, 0.0700000003, 0)
title.Font = Enum.Font.GothamMedium
title.Text = "headhunter"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0, 0, 0.0666666701, 0)
ScrollingFrame.Size = UDim2.new(0.860000014, 0, 0.787999988, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0.100000001, 0)

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0199999996, 0, 0, 0)
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Gotham
TextBox.MultiLine = true
TextBox.PlaceholderText = "-- Welcome to headhunter"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 18.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Execute.Position = UDim2.new(0.0158033371, 0, 0.85466665, 0)
Execute.Size = UDim2.new(0.186040387, 0, 0.0958333313, 0)
Execute.Font = Enum.Font.GothamBold
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000
Execute.TextWrapped = true
Execute.MouseButton1Click:Connect(function()
	loadstring(TextBox.Text)()
end)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Execute

Clear.Name = "Clear"
Clear.Parent = Frame
Clear.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Clear.Position = UDim2.new(0.221246719, 0, 0.85466665, 0)
Clear.Size = UDim2.new(0.186040387, 0, 0.0958333313, 0)
Clear.Font = Enum.Font.GothamBold
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000
Clear.TextWrapped = true
Clear.MouseButton1Click:Connect(function()
	TextBox.Text = ""
end)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Clear

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.964003503, 0, 0.0166666675, 0)
Close.Size = UDim2.new(0.0228270404, 0, 0.0500000007, 0)
Close.Font = Enum.Font.Gotham
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	Open.Visible = not Open.Visible
	Frame.Visible = not Frame.Visible
end)

Open.Name = "Open"
Open.Parent = headhunter
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open.BackgroundTransparency = 0.600
Opem.TextTransparency = 0.500
Open.Position = UDim2.new(0.482264161, 0, 0.471604913, 0)
Open.Size = UDim2.new(0.0343396217, 0, 0.055555556, 0)
Open.Visible = false
Open.Font = Enum.Font.GothamBlack
Open.Text = "HH"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.Active = true
Open.Draggable = true
Open.MouseButton1Click:Connect(function()
	Open.Visible = not Open.Visible
	Frame.Visible = not Frame.Visible
end)

UICorner_4.CornerRadius = UDim.new(0, 50)
UICorner_4.Parent = Open

TextBox:GetPropertyChangedSignal("Text"):Connect(function()
	local lines = 0
	local glines = TextBox.Text:gmatch("\n")
	while true do
		if glines() == nil then
			break
		else
			lines += 1
		end
	end
	if lines == 0 then
		lines = 1
	end
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, lines / 10, 0)
end)
