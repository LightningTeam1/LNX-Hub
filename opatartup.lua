local stealthGui = Instance.new("ScreenGui")
stealthGui.Name = "ShadowInterface"
stealthGui.ResetOnSpawn = false
stealthGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local coreFrame = Instance.new("Frame")
coreFrame.Name = "ObsidianCore"
coreFrame.Size = UDim2.new(0, 300, 0, 160)
coreFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
coreFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
coreFrame.BorderSizePixel = 0
coreFrame.AnchorPoint = Vector2.new(0.5, 0.5)
coreFrame.Parent = stealthGui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)
frameCorner.Parent = coreFrame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0, 40)
label.Position = UDim2.new(0, 0, 0, 5)
label.BackgroundTransparency = 1
label.Text = "CONTROL DE ACCESO"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 16
label.Parent = coreFrame

local inputBox = Instance.new("TextBox")
inputBox.Name = "KeyInput"
inputBox.Size = UDim2.new(0, 260, 0, 35)
inputBox.Position = UDim2.new(0.5, 0, 0, 65)
inputBox.AnchorPoint = Vector2.new(0.5, 0.5)
inputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.Font = Enum.Font.Gotham
inputBox.PlaceholderText = "Ingrese Clave..."
inputBox.Text = ""
inputBox.TextSize = 14
inputBox.Parent = coreFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 6)
inputCorner.Parent = inputBox

local verifyButton = Instance.new("TextButton")
verifyButton.Name = "KeyVerify"
verifyButton.Size = UDim2.new(0, 260, 0, 35)
verifyButton.Position = UDim2.new(0.5, 0, 0, 115)
verifyButton.AnchorPoint = Vector2.new(0.5, 0.5)
verifyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Botón Blanco
verifyButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Texto Negro
verifyButton.Text = "VERIFICAR"
verifyButton.Font = Enum.Font.GothamBold
verifyButton.TextSize = 14
verifyButton.AutoButtonColor = true
verifyButton.Parent = coreFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = verifyButton

--- Lógica de Cifrado Unicode ---

-- "equiporayo" en Unicode (Puntos de código decimales)
local secretKeyUnicode = {101, 113, 117, 105, 112, 111, 114, 97, 121, 111}

local function checkKey(input)
    -- Si la longitud no coincide, ni siquiera comparamos
    if #input ~= #secretKeyUnicode then return false end
    
    -- Convertimos el input a una tabla Unicode y comparamos
    for i = 1, #input do
        if string.byte(input, i) ~= secretKeyUnicode[i] then
            return false
        end
    end
    return true
end

verifyButton.MouseButton1Click:Connect(function()
    local userInput = inputBox.Text
    
    if checkKey(userInput) then
        print("Acceso Autorizado")
        -- Animación simple de salida
        coreFrame:TweenSize(UDim2.new(0,0,0,0), "In", "Quad", 0.3, true)
        task.wait(0.3)
        stealthGui:Destroy()
    else
        -- Feedback de error
        verifyButton.Text = "CLAVE INCORRECTA"
        verifyButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        task.wait(1)
        verifyButton.Text = "VERIFICAR"
        verifyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    end
end)
