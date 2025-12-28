-- Crear el ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear el Frame flotante en el centro
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150) -- ancho x alto
frame.Position = UDim2.new(0.5, -150, 0.5, -75) -- centrar
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5 -- un poco transparente
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.ClipsDescendants = true
frame.RoundedCorner = Instance.new("UICorner", frame) -- bordes redondeados
frame.RoundedCorner.CornerRadius = UDim.new(0, 10)

-- Texto "Insert the Key"
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 0, 30)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Text = "Insert the Key"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.SourceSans
label.TextSize = 20
label.Parent = frame

-- Input para la Key
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0, 40)
textBox.Position = UDim2.new(0, 10, 0, 50)
textBox.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- gris
textBox.BackgroundTransparency = 0
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.Font = Enum.Font.SourceSans
textBox.PlaceholderText = "Enter Key"
textBox.TextSize = 18
textBox.Parent = frame
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = textBox

-- Botón Verify
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 40)
button.Position = UDim2.new(0, 10, 0, 100)
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Verify"
button.Font = Enum.Font.SourceSans
button.TextSize = 18
button.Parent = frame
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button

-- Ejemplo de función al presionar el botón
button.MouseButton1Click:Connect(function()
    local key = textBox.Text
    print("Key ingresada:", key)
    -- Aquí puedes agregar tu verificación
end)
