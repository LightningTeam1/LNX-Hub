local stealthGui = Instance.new("ScreenGui")
stealthGui.Name = "ShadowInterface"
stealthGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local coreFrame = Instance.new("Frame")
coreFrame.Name = "ObsidianCore"
coreFrame.Size = UDim2.new(0, 300, 0, 150)
coreFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
coreFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
coreFrame.BackgroundTransparency = 0.5
coreFrame.BorderSizePixel = 0
coreFrame.AnchorPoint = Vector2.new(0.5, 0.5)
coreFrame.ClipsDescendants = true
coreFrame.Parent = stealthGui

local coreFrameCorner = Instance.new("UICorner")
coreFrameCorner.CornerRadius = UDim.new(0, 10)
coreFrameCorner.Parent = coreFrame

local label = Instance.new("TextLabel")
label.Name = "KeyPrompt"
label.Size = UDim2.new(1, -20, 0, 30)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Text = "Insert the Key"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.SourceSans
label.TextSize = 20
label.Parent = coreFrame

local inputBox = Instance.new("TextBox")
inputBox.Name = "KeyInput"
inputBox.Size = UDim2.new(1, -20, 0, 40)
inputBox.Position = UDim2.new(0, 10, 0, 50)
inputBox.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
inputBox.BackgroundTransparency = 0
inputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
inputBox.Font = Enum.Font.SourceSans
inputBox.PlaceholderText = "Enter Key"
inputBox.TextSize = 18
inputBox.Parent = coreFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 8)
inputCorner.Parent = inputBox

local verifyButton = Instance.new("TextButton")
verifyButton.Name = "KeyVerify"
verifyButton.Size = UDim2.new(1, -20, 0, 40)
verifyButton.Position = UDim2.new(0, 10, 0, 100)
verifyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
verifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyButton.Text = "Verify"
verifyButton.Font = Enum.Font.SourceSans
verifyButton.TextSize = 18
verifyButton.Parent = coreFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = verifyButton

verifyButton.MouseButton1Click:Connect(function()
    local key = inputBox.Text
    print("Key ingresada:", key)
end)
