    repeat task.wait() until game:IsLoaded()

local Rayfield
local sources = {
    "https://raw.githubusercontent.com/shlexware/Rayfield/main/source",
    "https://sirius.menu/rayfield", 
    "https://cdn.jsdelivr.net/gh/shlexware/Rayfield@main/source",
    "https://pastebin.com/raw/5FPAP5T5"
}

for i = 1, 4 do
    local success = pcall(function()
        Rayfield = loadstring(game:HttpGet(sources[i]))()
    end)
    if success then break end
    if i == 4 then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "错误",
            Text = "UI库加载失败",
            Duration = 10
        })
        return
    end
end

local Window
for i = 1, 5 do
    local success = pcall(function()
        Window = Rayfield:CreateWindow({
            Name = "小脚本💀",
            LoadingTitle = "加载中...",
            LoadingSubtitle = "尝试 "..i.."/5",
            ConfigurationSaving = {Enabled = false},
            Keybind = Enum.KeyCode.RightShift
        })
    end)
    if success then break end
    if i == 5 then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "错误",
            Text = "窗口创建失败",
            Duration = 10
        })
        return
    end
end

local Tab1 = Window:CreateTab("巴掌大战", 7734068321)
local Tab2 = Window:CreateTab("极速传奇", 7734068321)
local Tab3 = Window:CreateTab("闯入2", 7734068321)
local Tab4 = Window:CreateTab("割草游戏", 7734068321)

Tab1:CreateLabel("作者: 不知道")
Tab1:CreateLabel("作者QQ: 1111111111")
Tab1:CreateLabel("QQ群: 11111111111")

Tab1:CreateButton({
    Name = "全徽章手套",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/InstantGloves"))()
    end
})

Tab1:CreateButton({
    Name = "钻石石手套无冷却变钻石",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniRockButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "RockButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(139, 69, 19) -- 岩石棕色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "巨石手套\n无冷却变巨石"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 8 -- 更小字号适应文字
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加岩石纹理效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(101, 50, 14)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 巨石手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变巨石脚本
    game:GetService("ReplicatedStorage").Rockmode:FireServer()
    print("巨石手套已激活")
    
    -- 点击反馈
    button.Text = "变巨石中..."
    task.wait(0.3)
    button.Text = "巨石手套\n无冷却变巨石"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(109, 54, 15) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(139, 69, 19) -- 恢复颜色
    end
end)

-- 设备适配提示
print("迷你巨石手套按钮已加载")
print("设备类型:", UserInputService.TouchEnabled and "手机" or "电脑")
print("使用方法: 拖动按钮可移动位置，点击激活巨石手套")

    end
})

Tab1:CreateButton({
    Name = "砖头无冷却放置",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniBrickButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "BrickButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(25, 118, 210)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "无冷却放砖"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 10 -- 小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加圆角
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

-- 添加边框
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(13, 71, 161)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 放砖功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行放砖脚本
    game:GetService("ReplicatedStorage").lbrick:FireServer()
    print("放砖指令已发送")
    
    -- 点击反馈
    button.Text = "放砖中..."
    task.wait(0.3)
    button.Text = "无冷却放砖"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(21, 101, 192) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(25, 118, 210) -- 恢复颜色
    end
end)

-- 设备适配提示
print("迷你放砖按钮已加载")
print("设备类型:", UserInputService.TouchEnabled and "手机" or "电脑")
print("使用方法: 拖动按钮可移动位置，点击放砖")

    end
})

Tab1:CreateButton({
    Name = "无冷却反转建议反转快没的时候再点",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniReverseButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "ReverseButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(255, 50, 50) -- 红色警示色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "无冷却反转\n快没时点"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加视觉效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(200, 40, 40)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 反转能力功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行反转脚本
    game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
    print("反转能力已激活")
    
    -- 点击反馈
    button.Text = "反转中..."
    task.wait(0.5)
    button.Text = "无冷却反转\n快没时点"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(220, 40, 40) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(255, 50, 50) -- 恢复颜色
    end
end)

-- 设备适配提示
print("迷你反转按钮已加载")
print("提示: 建议在反转快结束时点击使用")

    end
})

Tab1:CreateButton({
    Name = "戴维手套无冷却放钉",
    Callback = function()
        
-- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniDaveButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "DaveButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(50, 50, 255) -- 蓝色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "戴维手套\n无冷却放钉"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加视觉效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(40, 40, 200)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 戴维手套功能 =====
-- 假设args是需要传递的参数表
local args = {
    -- 这里填入你的具体参数
    -- 例如: abilityType = "spike",
    -- cooldown = 0
}

button.MouseButton1Click:Connect(function()
    -- 执行戴维手套脚本
    local args = {
    [1] = "summon"
}

game:GetService("ReplicatedStorage").Events.Dave:FireServer(unpack(args))

    print("戴维手套已激活 - 放置钉子")
    
    -- 点击反馈
    button.Text = "放钉中..."
    task.wait(0.5)
    button.Text = "戴维手套\n无冷却放钉"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 220) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 255) -- 恢复颜色
    end
end)

-- 设备适配提示
print("戴维手套按钮已加载")
print("提示: 点击按钮可无冷却放置钉子")

    end
})

Tab1:CreateButton({
    Name = "rob手套无冷却变成rob",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniRobButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "RobButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(100, 0, 100) -- 紫色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "rob手套\n无冷却变rob"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加视觉效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(80, 0, 80)
stroke.Thickness = 1
stroke.Parent = button

-- ===== Rob手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行Rob手套脚本
    local args = {
        [1] = false
    }
    game:GetService("ReplicatedStorage").rob:FireServer(unpack(args))
    print("Rob手套已激活 - 变身Rob")
    
    -- 点击反馈
    button.Text = "变身中..."
    task.wait(0.5)
    button.Text = "rob手套\n无冷却变rob"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(80, 0, 80) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(100, 0, 100) -- 恢复颜色
    end
end)

-- 设备适配提示
print("Rob手套按钮已加载")
print("提示: 点击按钮可无冷却变身Rob")

    end
})

Tab1:CreateButton({
    Name = "巨石手套无冷却变巨石",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniRockButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "RockButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(139, 69, 19) -- 岩石棕色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "巨石手套\n无冷却变巨石"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加岩石纹理效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(101, 50, 14)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 巨石手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变巨石脚本
    game:GetService("ReplicatedStorage").Rockmode:FireServer()
    print("巨石手套已激活 - 变身巨石")
    
    -- 点击反馈
    button.Text = "变身中..."
    task.wait(0.5)
    button.Text = "巨石手套\n无冷却变巨石"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(109, 54, 15) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(139, 69, 19) -- 恢复颜色
    end
end)

-- 设备适配提示
print("巨石手套按钮已加载")
print("提示: 点击按钮可无冷却变身巨石")

    end
})

Tab1:CreateButton({
    Name = "五条手套无动画放紫球",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniGojoButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "GojoButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(100, 0, 150) -- 紫色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "五条手套\n无动画放紫球"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加视觉效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(70, 0, 110)
stroke.Thickness = 1
stroke.Parent = button

-- ===== 五条手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行放紫球脚本
    local args = {
        [1] = "Release",
        [2] = {
            [1] = CFrame.new(-4.91857385635376, -5.172851085662842, 52.32478332519531) * CFrame.Angles(-3.141585111618042, 1.5600874423980713, 3.141585111618042)
        }
    }
    game:GetService("ReplicatedStorage").RojoAbility:FireServer(unpack(args))
    print("五条手套已激活 - 释放紫球")
    
    -- 点击反馈
    button.Text = "释放中..."
    task.wait(0.5)
    button.Text = "五条手套\n无动画放紫球"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(80, 0, 130) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(100, 0, 150) -- 恢复颜色
    end
end)

-- 设备适配提示
print("五条手套按钮已加载")
print("提示: 点击按钮可无动画释放紫球")

    end
})

Tab1:CreateButton({
    Name = "幽灵手套无冷却变幽灵",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniGhostButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "GhostButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- 半透明灰色
button.TextColor3 = Color3.fromRGB(200, 200, 200)
button.Text = "幽灵手套\n无冷却变幽灵"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加幽灵效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 150, 150)
stroke.Thickness = 1
stroke.Transparency = 0.5
stroke.Parent = button

-- 幽灵发光效果
local glow = Instance.new("ImageLabel")
glow.Name = "Glow"
glow.Size = UDim2.new(1.2, 0, 1.2, 0)
glow.Position = UDim2.new(-0.1, 0, -0.1, 0)
glow.BackgroundTransparency = 1
glow.Image = "rbxassetid://8992230431" -- 发光特效图片
glow.ImageColor3 = Color3.fromRGB(150, 150, 150)
glow.ScaleType = Enum.ScaleType.Slice
glow.SliceCenter = Rect.new(100, 100, 100, 100)
glow.Parent = button

-- ===== 幽灵手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变幽灵脚本
    game:GetService("ReplicatedStorage").Ghostinvisibilityactivated:FireServer()
    print("幽灵手套已激活 - 变身幽灵")
    
    -- 点击反馈
    button.Text = "幽灵化中..."
    task.wait(0.5)
    button.Text = "幽灵手套\n无冷却变幽灵"
    
    -- 幽灵特效闪烁
    for i = 1, 3 do
        glow.ImageColor3 = Color3.fromRGB(200, 200, 200)
        task.wait(0.1)
        glow.ImageColor3 = Color3.fromRGB(150, 150, 150)
        task.wait(0.1)
    end
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- 恢复颜色
    end
end)

-- 设备适配提示
print("幽灵手套按钮已加载")
print("提示: 点击按钮可无冷却变身幽灵")

    end
})

Tab1:CreateButton({
    Name = "击退手套无冷却格挡",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniPushButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "PushButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(255, 100, 0) -- 橙色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "击退手套\n无冷却格挡"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加冲击波效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(200, 80, 0)
stroke.Thickness = 2
stroke.Parent = button

-- 冲击波动画
local wave = Instance.new("Frame")
wave.Name = "WaveEffect"
wave.Size = UDim2.new(1, 0, 1, 0)
wave.Position = UDim2.new(0, 0, 0, 0)
wave.BackgroundTransparency = 1
wave.BorderSizePixel = 0
wave.ClipsDescendants = true
wave.Parent = button

local waveInner = Instance.new("Frame")
waveInner.Name = "Wave"
waveInner.Size = UDim2.new(0, 0, 0, 0)
waveInner.Position = UDim2.new(0.5, 0, 0.5, 0)
waveInner.AnchorPoint = Vector2.new(0.5, 0.5)
waveInner.BackgroundColor3 = Color3.fromRGB(255, 150, 50)
waveInner.BackgroundTransparency = 0.7
waveInner.BorderSizePixel = 0
waveInner.Parent = wave

local waveCorner = Instance.new("UICorner")
waveCorner.CornerRadius = UDim.new(1, 0)
waveCorner.Parent = waveInner

-- ===== 击退手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行格挡脚本
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
    print("击退手套已激活 - 格挡攻击")
    
    -- 点击反馈
    button.Text = "格挡中..."
    
    -- 冲击波动画
    waveInner.Size = UDim2.new(0, 0, 0, 0)
    waveInner.BackgroundTransparency = 0.7
    waveInner:TweenSize(UDim2.new(2, 0, 2, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5)
    waveInner:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.5)
    
    task.wait(0.5)
    button.Text = "击退手套\n无冷却格挡"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(220, 90, 0) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(255, 100, 0) -- 恢复颜色
    end
end)

-- 设备适配提示
print("击退手套按钮已加载")
print("提示: 点击按钮可无冷却格挡攻击")

    end
})

Tab1:CreateButton({
    Name = "镜子手套无冷却发射激光",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniMirrorButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "MirrorButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(0, 150, 255) -- 镜面蓝色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "镜子手套\n无冷却激光"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加镜面反射效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 100, 200)
stroke.Thickness = 1
stroke.Parent = button

-- 激光发射特效
local laserEffect = Instance.new("Frame")
laserEffect.Name = "LaserEffect"
laserEffect.Size = UDim2.new(0, 0, 0, 0)
laserEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
laserEffect.AnchorPoint = Vector2.new(0.5, 0.5)
laserEffect.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
laserEffect.BackgroundTransparency = 0.5
laserEffect.BorderSizePixel = 0
laserEffect.ZIndex = 9998
laserEffect.Parent = button

local laserCorner = Instance.new("UICorner")
laserCorner.CornerRadius = UDim.new(1, 0)
laserCorner.Parent = laserEffect

-- ===== 镜子手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行发射激光脚本
    local args = {
        [1] = "reflect"
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("镜子手套已激活 - 发射激光")
    
    -- 点击反馈
    button.Text = "发射中..."
    
    -- 激光发射动画
    laserEffect.Size = UDim2.new(0, 0, 0, 0)
    laserEffect.BackgroundTransparency = 0.5
    laserEffect:TweenSize(UDim2.new(2, 0, 2, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    laserEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "镜子手套\n无冷却激光"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(0, 130, 220) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(0, 150, 255) -- 恢复颜色
    end
end)

-- 设备适配提示
print("镜子手套按钮已加载")
print("提示: 点击按钮可无冷却发射激光")

    end
})

Tab1:CreateButton({
    Name = "镜子手套无冷却格挡",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniMirrorBlockButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "MirrorBlockButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(100, 200, 255) -- 镜面浅蓝色
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "镜子手套\n无冷却格挡"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加镜面反射效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 1
stroke.Parent = button

-- 格挡特效
local shieldEffect = Instance.new("Frame")
shieldEffect.Name = "ShieldEffect"
shieldEffect.Size = UDim2.new(0, 0, 0, 0)
shieldEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
shieldEffect.AnchorPoint = Vector2.new(0.5, 0.5)
shieldEffect.BackgroundColor3 = Color3.fromRGB(200, 230, 255)
shieldEffect.BackgroundTransparency = 0.8
shieldEffect.BorderSizePixel = 0
shieldEffect.ZIndex = 9998
shieldEffect.Parent = button

local shieldCorner = Instance.new("UICorner")
shieldCorner.CornerRadius = UDim.new(1, 0)
shieldCorner.Parent = shieldEffect

-- ===== 镜子手套格挡功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行格挡脚本
    local args = {
        [1] = "reflect"
    }
    game:GetService("ReplicatedStorage").Events.Reflect:FireServer(unpack(args))
    print("镜子手套格挡已激活")
    
    -- 点击反馈
    button.Text = "格挡中..."
    
    -- 格挡特效动画
    shieldEffect.Size = UDim2.new(0, 0, 0, 0)
    shieldEffect.BackgroundTransparency = 0.8
    shieldEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    shieldEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "镜子手套\n无冷却格挡"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(80, 180, 230) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(100, 200, 255) -- 恢复颜色
    end
end)

-- 设备适配提示
print("镜子手套格挡按钮已加载")
print("提示: 点击按钮可无冷却激活镜面格挡")

    end
})

Tab1:CreateButton({
    Name = "镜子手套无冷却放镜子",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniMirrorSpawnButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "MirrorSpawnButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(200, 230, 255) -- 镜面银白色
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "镜子手套\n无冷却放镜"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加镜面效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 180, 220)
stroke.Thickness = 1
stroke.Parent = button

-- 镜子放置特效
local mirrorEffect = Instance.new("Frame")
mirrorEffect.Name = "MirrorEffect"
mirrorEffect.Size = UDim2.new(0, 0, 0, 0)
mirrorEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
mirrorEffect.AnchorPoint = Vector2.new(0.5, 0.5)
mirrorEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mirrorEffect.BackgroundTransparency = 0.7
mirrorEffect.BorderSizePixel = 0
mirrorEffect.ZIndex = 9998
mirrorEffect.Parent = button

local mirrorCorner = Instance.new("UICorner")
mirrorCorner.CornerRadius = UDim.new(0, 0)
mirrorCorner.Parent = mirrorEffect

-- ===== 镜子放置功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行放置镜子脚本
    local args = {
        [1] = "spawn_mirror"
    }
    game:GetService("ReplicatedStorage").Events.Reflect:FireServer(unpack(args))
    print("镜子已放置")
    
    -- 点击反馈
    button.Text = "放置中..."
    
    -- 镜子放置特效动画
    mirrorEffect.Size = UDim2.new(0, 0, 0, 0)
    mirrorEffect.BackgroundTransparency = 0.7
    mirrorEffect.Rotation = 0
    mirrorEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    mirrorEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    mirrorEffect:TweenRotation(45, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    
    task.wait(0.5)
    button.Text = "镜子手套\n无冷却放镜"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(180, 210, 240) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(200, 230, 255) -- 恢复颜色
    end
end)

-- 设备适配提示
print("镜子放置按钮已加载")
print("提示: 点击按钮可无冷却放置镜子")

    end
})

Tab1:CreateButton({
    Name = "刺客手套无冷却扔刀",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniAssassinButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "AssassinButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- 暗黑色
button.TextColor3 = Color3.fromRGB(255, 50, 50) -- 血红色文字
button.Text = "刺客手套\n无冷却扔刀"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加刀锋效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 1
stroke.Parent = button

-- 刀光特效
local bladeEffect = Instance.new("Frame")
bladeEffect.Name = "BladeEffect"
bladeEffect.Size = UDim2.new(0, 0, 0, 0)
bladeEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
bladeEffect.AnchorPoint = Vector2.new(0.5, 0.5)
bladeEffect.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
bladeEffect.BackgroundTransparency = 0.8
bladeEffect.BorderSizePixel = 0
bladeEffect.ZIndex = 9998
bladeEffect.Parent = button

local bladeCorner = Instance.new("UICorner")
bladeCorner.CornerRadius = UDim.new(0, 0)
bladeCorner.Parent = bladeEffect

-- ===== 刺客手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行扔刀脚本
    game:GetService("ReplicatedStorage").Events.slasher:FireServer()
    print("刺客手套已激活 - 飞刀投掷")
    
    -- 点击反馈
    button.Text = "扔刀中..."
    
    -- 刀光特效动画
    bladeEffect.Size = UDim2.new(0, 0, 0.5, 0)
    bladeEffect.Rotation = 0
    bladeEffect.BackgroundTransparency = 0.8
    bladeEffect:TweenSize(UDim2.new(1.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2)
    bladeEffect:TweenRotation(45, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2)
    bladeEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2)
    
    task.wait(0.5)
    button.Text = "刺客手套\n无冷却扔刀"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- 恢复颜色
    end
end)

-- 设备适配提示
print("刺客手套按钮已加载")
print("提示: 点击按钮可无冷却投掷飞刀")

    end
})

Tab1:CreateButton({
    Name = "汽车手套无冷却变车",
    Callback = function()
          -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniCarButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "CarButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- 汽车红
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "汽车手套\n无冷却变车"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加汽车风格效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 0, 0)
stroke.Thickness = 1
stroke.Parent = button

-- 车灯特效
local headlight = Instance.new("Frame")
headlight.Name = "HeadlightEffect"
headlight.Size = UDim2.new(0, 0, 0, 0)
headlight.Position = UDim2.new(0.5, 0, 0.5, 0)
headlight.AnchorPoint = Vector2.new(0.5, 0.5)
headlight.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
headlight.BackgroundTransparency = 0.8
headlight.BorderSizePixel = 0
headlight.ZIndex = 9998
headlight.Parent = button

local headlightCorner = Instance.new("UICorner")
headlightCorner.CornerRadius = UDim.new(1, 0)
headlightCorner.Parent = headlight

-- ===== 汽车变身功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变车脚本
    local args = {
        [1] = false
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("汽车手套已激活 - 变身汽车")
    
    -- 点击反馈
    button.Text = "变身中..."
    
    -- 车灯特效动画
    headlight.Size = UDim2.new(0, 0, 0, 0)
    headlight.BackgroundTransparency = 0.8
    headlight:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    headlight:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "汽车手套\n无冷却变车"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(180, 0, 0) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- 恢复颜色
    end
end)

-- 设备适配提示
print("汽车手套按钮已加载")
print("提示: 点击按钮可无冷却变身汽车")

    end
})

Tab1:CreateButton({
    Name = "修理者手套无冷却放机器人",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniRepairButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "RepairButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(0, 150, 200) -- 科技蓝
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "修理者手套\n无冷却放机器人"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加科技感效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 100, 150)
stroke.Thickness = 1
stroke.Parent = button

-- 机器人召唤特效
local botEffect = Instance.new("Frame")
botEffect.Name = "BotEffect"
botEffect.Size = UDim2.new(0, 0, 0, 0)
botEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
botEffect.AnchorPoint = Vector2.new(0.5, 0.5)
botEffect.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
botEffect.BackgroundTransparency = 0.8
botEffect.BorderSizePixel = 0
botEffect.ZIndex = 9998
botEffect.Parent = button

local botCorner = Instance.new("UICorner")
botCorner.CornerRadius = UDim.new(0, 0)
botCorner.Parent = botEffect

-- ===== 修理者手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行放置机器人脚本
    local args = {
        [1] = "E_ABILITY"
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("修理者手套已激活 - 放置机器人")
    
    -- 点击反馈
    button.Text = "放置中..."
    
    -- 机器人召唤特效动画
    botEffect.Size = UDim2.new(0, 0, 0, 0)
    botEffect.BackgroundTransparency = 0.8
    botEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    botEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "修理者手套\n无冷却放机器人"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(0, 130, 180) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(0, 150, 200) -- 恢复颜色
    end
end)

-- 设备适配提示
print("修理者手套按钮已加载")
print("提示: 点击按钮可无冷却放置机器人")

    end
})

Tab1:CreateButton({
    Name = "枕头手套获得枕头",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniPillowButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "PillowButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(255, 200, 200) -- 粉色枕头色
button.TextColor3 = Color3.fromRGB(100, 50, 50)
button.Text = "枕头手套\n获得枕头"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加柔软效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.4, 0) -- 更圆润的边角
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220, 150, 150)
stroke.Thickness = 1
stroke.Parent = button

-- 枕头弹跳特效
local bounceEffect = Instance.new("Frame")
bounceEffect.Name = "BounceEffect"
bounceEffect.Size = UDim2.new(1, 0, 1, 0)
bounceEffect.Position = UDim2.new(0, 0, 0, 0)
bounceEffect.BackgroundTransparency = 1
bounceEffect.BorderSizePixel = 0
bounceEffect.ZIndex = 9998
bounceEffect.Parent = button

-- ===== 枕头获取功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行获取枕头脚本
    local args = {
        [1] = "AddPillow"
    }
    game:GetService("ReplicatedStorage").Events.PillowEvent:FireServer(unpack(args))
    print("枕头手套已激活 - 获得枕头")
    
    -- 点击反馈
    button.Text = "获取中..."
    
    -- 枕头弹跳动画
    for i = 1, 3 do
        button.Position = UDim2.new(button.Position.X.Scale, button.Position.X.Offset, button.Position.Y.Scale, button.Position.Y.Offset - 5)
        task.wait(0.1)
        button.Position = UDim2.new(button.Position.X.Scale, button.Position.X.Offset, button.Position.Y.Scale, button.Position.Y.Offset + 5)
        task.wait(0.1)
    end
    
    task.wait(0.2)
    button.Text = "枕头手套\n获得枕头"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(235, 180, 180) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(255, 200, 200) -- 恢复颜色
    end
end)

-- 设备适配提示
print("枕头手套按钮已加载")
print("提示: 点击按钮可获得枕头")

    end
})

Tab1:CreateButton({
    Name = "拆除手套无限布置c4",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniDemolitionButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "DemolitionButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- 危险红色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "拆除手套\n无限布C4"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加爆炸效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 0, 0)
stroke.Thickness = 1
stroke.Parent = button

-- 爆炸特效
local explosionEffect = Instance.new("Frame")
explosionEffect.Name = "ExplosionEffect"
explosionEffect.Size = UDim2.new(0, 0, 0, 0)
explosionEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
explosionEffect.AnchorPoint = Vector2.new(0.5, 0.5)
explosionEffect.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
explosionEffect.BackgroundTransparency = 0.8
explosionEffect.BorderSizePixel = 0
explosionEffect.ZIndex = 9998
explosionEffect.Parent = button

local explosionCorner = Instance.new("UICorner")
explosionCorner.CornerRadius = UDim.new(1, 0)
explosionCorner.Parent = explosionEffect

-- ===== 拆除手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行布置C4脚本
    local args = {
        [1] = "spike"
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("拆除手套已激活 - 布置C4")
    
    -- 点击反馈
    button.Text = "布置中..."
    
    -- 爆炸特效动画
    explosionEffect.Size = UDim2.new(0, 0, 0, 0)
    explosionEffect.BackgroundTransparency = 0.8
    explosionEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    explosionEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "拆除手套\n无限布C4"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(180, 0, 0) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- 恢复颜色
    end
end)

-- 设备适配提示
print("拆除手套按钮已加载")
print("提示: 点击按钮可无限布置C4")

    end
})

Tab1:CreateButton({
    Name = "阶段手套无冷却变心",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniPhaseButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "PhaseButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(150, 0, 150) -- 紫色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "阶段手套\n无冷却变心"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加心形效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(100, 0, 100)
stroke.Thickness = 1
stroke.Parent = button

-- 心跳特效
local heartEffect = Instance.new("Frame")
heartEffect.Name = "HeartEffect"
heartEffect.Size = UDim2.new(0, 0, 0, 0)
heartEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
heartEffect.AnchorPoint = Vector2.new(0.5, 0.5)
heartEffect.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
heartEffect.BackgroundTransparency = 0.8
heartEffect.BorderSizePixel = 0
heartEffect.ZIndex = 9998
heartEffect.Parent = button

local heartCorner = Instance.new("UICorner")
heartCorner.CornerRadius = UDim.new(1, 0)
heartCorner.Parent = heartEffect

-- ===== 阶段手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变心脚本
    game:GetService("ReplicatedStorage").PhaseA:FireServer()
    print("阶段手套已激活 - 变心")
    
    -- 点击反馈
    button.Text = "变心中..."
    
    -- 心跳特效动画
    heartEffect.Size = UDim2.new(0, 0, 0, 0)
    heartEffect.BackgroundTransparency = 0.8
    heartEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    heartEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "阶段手套\n无冷却变心"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(130, 0, 130) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(150, 0, 150) -- 恢复颜色
    end
end)

-- 设备适配提示
print("阶段手套按钮已加载")
print("提示: 点击按钮可无冷却变心")

    end
})

Tab1:CreateButton({
    Name = "希卡手套无冷却护盾",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniSheikaButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "SheikaButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(0, 100, 200) -- 希卡蓝
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "希卡手套\n无冷却护盾"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加希卡科技效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 1
stroke.Parent = button

-- 护盾特效
local shieldEffect = Instance.new("Frame")
shieldEffect.Name = "ShieldEffect"
shieldEffect.Size = UDim2.new(0, 0, 0, 0)
shieldEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
shieldEffect.AnchorPoint = Vector2.new(0.5, 0.5)
shieldEffect.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
shieldEffect.BackgroundTransparency = 0.8
shieldEffect.BorderSizePixel = 0
shieldEffect.ZIndex = 9998
shieldEffect.Parent = button

local shieldCorner = Instance.new("UICorner")
shieldCorner.CornerRadius = UDim.new(1, 0)
shieldCorner.Parent = shieldEffect

-- ===== 希卡手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行护盾脚本
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
    print("希卡手套已激活 - 护盾展开")
    
    -- 点击反馈
    button.Text = "护盾展开..."
    
    -- 护盾特效动画
    shieldEffect.Size = UDim2.new(0, 0, 0, 0)
    shieldEffect.BackgroundTransparency = 0.8
    shieldEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    shieldEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "希卡手套\n无冷却护盾"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(0, 80, 180) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(0, 100, 200) -- 恢复颜色
    end
end)

-- 设备适配提示
print("希卡手套按钮已加载")
print("提示: 点击按钮可无冷却展开护盾")

    end
})

Tab1:CreateButton({
    Name = "冰霜手套无冷却结冰",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniFrostButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "FrostButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(100, 200, 255) -- 冰蓝色
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "冰霜手套\n无冷却结冰"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加冰霜效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 220, 255)
stroke.Thickness = 1
stroke.Parent = button

-- 结冰特效
local frostEffect = Instance.new("Frame")
frostEffect.Name = "FrostEffect"
frostEffect.Size = UDim2.new(0, 0, 0, 0)
frostEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
frostEffect.AnchorPoint = Vector2.new(0.5, 0.5)
frostEffect.BackgroundColor3 = Color3.fromRGB(200, 240, 255)
frostEffect.BackgroundTransparency = 0.8
frostEffect.BorderSizePixel = 0
frostEffect.ZIndex = 9998
frostEffect.Parent = button

local frostCorner = Instance.new("UICorner")
frostCorner.CornerRadius = UDim.new(1, 0)
frostCorner.Parent = frostEffect

-- ===== 冰霜手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行结冰脚本
    local args = {
        [1] = 0.03312500207684934
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("冰霜手套已激活 - 结冰效果")
    
    -- 点击反馈
    button.Text = "结冰中..."
    
    -- 冰霜特效动画
    frostEffect.Size = UDim2.new(0, 0, 0, 0)
    frostEffect.BackgroundTransparency = 0.8
    frostEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    frostEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "冰霜手套\n无冷却结冰"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(80, 180, 230) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(100, 200, 255) -- 恢复颜色
    end
end)

-- 设备适配提示
print("冰霜手套按钮已加载")
print("提示: 点击按钮可无冷却释放结冰效果")

    end
})

Tab1:CreateButton({
    Name = "蛋器手套无冷却变成蛋",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniEggButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "EggButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(255, 255, 200) -- 蛋黄色
button.TextColor3 = Color3.fromRGB(100, 70, 0)
button.Text = "蛋器手套\n无冷却变蛋"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加蛋壳效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.5, 0) -- 完全圆形
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(200, 170, 100)
stroke.Thickness = 1
stroke.Parent = button

-- 蛋壳裂纹特效
local crackEffect = Instance.new("Frame")
crackEffect.Name = "CrackEffect"
crackEffect.Size = UDim2.new(1, 0, 1, 0)
crackEffect.Position = UDim2.new(0, 0, 0, 0)
crackEffect.BackgroundTransparency = 1
crackEffect.BorderSizePixel = 0
crackEffect.ZIndex = 9998
crackEffect.Parent = button

-- ===== 蛋器手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行变蛋脚本
    game:GetService("ReplicatedStorage").Events.EgglerRAbility:FireServer()
    print("蛋器手套已激活 - 变身蛋形态")
    
    -- 点击反馈
    button.Text = "变蛋中..."
    
    -- 蛋壳裂纹动画
    for i = 1, 3 do
        button.BackgroundColor3 = Color3.fromRGB(255, 240, 180)
        task.wait(0.1)
        button.BackgroundColor3 = Color3.fromRGB(255, 255, 200)
        task.wait(0.1)
    end
    
    task.wait(0.2)
    button.Text = "蛋器手套\n无冷却变蛋"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(240, 240, 180) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(255, 255, 200) -- 恢复颜色
    end
end)

-- 设备适配提示
print("蛋器手套按钮已加载")
print("提示: 点击按钮可无冷却变身蛋形态")

    end
})

Tab1:CreateButton({
    Name = "蛋器手套无冷却吐舌头",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniEggTongueButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "EggTongueButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(255, 220, 150) -- 蛋黄色
button.TextColor3 = Color3.fromRGB(150, 50, 50)
button.Text = "蛋器手套\n无冷却吐舌"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加蛋壳效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.4, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(200, 150, 100)
stroke.Thickness = 1
stroke.Parent = button

-- 舌头特效
local tongueEffect = Instance.new("Frame")
tongueEffect.Name = "TongueEffect"
tongueEffect.Size = UDim2.new(0, 0, 0, 0)
tongueEffect.Position = UDim2.new(0.5, 0, 0.7, 0)
tongueEffect.AnchorPoint = Vector2.new(0.5, 0)
tongueEffect.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
tongueEffect.BackgroundTransparency = 0.8
tongueEffect.BorderSizePixel = 0
tongueEffect.ZIndex = 9998
tongueEffect.Parent = button

local tongueCorner = Instance.new("UICorner")
tongueCorner.CornerRadius = UDim.new(0.5, 0)
tongueCorner.Parent = tongueEffect

-- ===== 蛋器手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行吐舌头脚本
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
    print("蛋器手套已激活 - 吐舌头")
    
    -- 点击反馈
    button.Text = "吐舌中..."
    
    -- 舌头伸缩动画
    tongueEffect.Size = UDim2.new(0.5, 0, 0, 0)
    tongueEffect.BackgroundTransparency = 0.8
    tongueEffect:TweenSize(UDim2.new(0.5, 0, 0.8, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.3)
    tongueEffect:TweenBackgroundTransparency(0.5, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    tongueEffect:TweenSize(UDim2.new(0.5, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.3)
    tongueEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.3)
    button.Text = "蛋器手套\n无冷却吐舌"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(240, 200, 130) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(255, 220, 150) -- 恢复颜色
    end
end)

-- 设备适配提示
print("蛋器手套吐舌按钮已加载")
print("提示: 点击按钮可无冷却吐舌头")

    end
})

Tab1:CreateButton({
    Name = "阿格罗手套无冷却",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniAgroButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "AgroButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(150, 75, 0) -- 阿格罗棕
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "阿格罗手套\n无冷却"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加皮革效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(100, 50, 0)
stroke.Thickness = 1
stroke.Parent = button

-- 能量特效
local energyEffect = Instance.new("Frame")
energyEffect.Name = "EnergyEffect"
energyEffect.Size = UDim2.new(0, 0, 0, 0)
energyEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
energyEffect.AnchorPoint = Vector2.new(0.5, 0.5)
energyEffect.BackgroundColor3 = Color3.fromRGB(255, 150, 50)
energyEffect.BackgroundTransparency = 0.8
energyEffect.BorderSizePixel = 0
energyEffect.ZIndex = 9998
energyEffect.Parent = button

local energyCorner = Instance.new("UICorner")
energyCorner.CornerRadius = UDim.new(1, 0)
energyCorner.Parent = energyEffect

-- ===== 阿格罗手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行阿格罗手套脚本
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
    print("阿格罗手套已激活")
    
    -- 点击反馈
    button.Text = "激活中..."
    
    -- 能量爆发动画
    energyEffect.Size = UDim2.new(0, 0, 0, 0)
    energyEffect.BackgroundTransparency = 0.8
    energyEffect:TweenSize(UDim2.new(1.5, 0, 1.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3)
    energyEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "阿格罗手套\n无冷却"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(120, 60, 0) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(150, 75, 0) -- 恢复颜色
    end
end)

-- 设备适配提示
print("阿格罗手套按钮已加载")
print("提示: 点击按钮可无冷却使用阿格罗手套能力")

    end
})

Tab1:CreateButton({
    Name = "步枪手套无限子弹",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniRifleButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "RifleButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- 金属灰
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "步枪手套\n无限子弹"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加金属效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.2, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(150, 150, 150)
stroke.Thickness = 1
stroke.Parent = button

-- 子弹特效
local bulletEffect = Instance.new("Frame")
bulletEffect.Name = "BulletEffect"
bulletEffect.Size = UDim2.new(0, 0, 0, 0)
bulletEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
bulletEffect.AnchorPoint = Vector2.new(0.5, 0.5)
bulletEffect.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
bulletEffect.BackgroundTransparency = 0.8
bulletEffect.BorderSizePixel = 0
bulletEffect.ZIndex = 9998
bulletEffect.Parent = button

local bulletCorner = Instance.new("UICorner")
bulletCorner.CornerRadius = UDim.new(0, 0)
bulletCorner.Parent = bulletEffect

-- ===== 步枪手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行无限子弹脚本
    local args = {
        [1] = "buckshot"
    }
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
    print("步枪手套已激活 - 无限子弹")
    
    -- 点击反馈
    button.Text = "射击中..."
    
    -- 子弹发射特效动画
    bulletEffect.Size = UDim2.new(0.1, 0, 0.1, 0)
    bulletEffect.Rotation = 0
    bulletEffect.BackgroundTransparency = 0.8
    bulletEffect:TweenSize(UDim2.new(0.5, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2)
    bulletEffect:TweenRotation(45, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2)
    bulletEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2)
    
    task.wait(0.5)
    button.Text = "步枪手套\n无限子弹"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(80, 80, 80) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- 恢复颜色
    end
end)

-- 设备适配提示
print("步枪手套按钮已加载")
print("提示: 点击按钮可激活无限子弹")

    end
})

Tab1:CreateButton({
    Name = "冲浪者手套无冷却丢宝箱",
    Callback = function()
        -- 创建玩家GUI
local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MiniSurferButton"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建迷你按钮（小拇指大小）
local button = Instance.new("TextButton")
button.Name = "SurferButton"
button.Size = UDim2.new(0, 40, 0, 40) -- 小拇指大小
button.Position = UDim2.new(0.8, 0, 0.8, 0) -- 右下角
button.BackgroundColor3 = Color3.fromRGB(0, 150, 200) -- 海洋蓝
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "冲浪者手套\n无冷却丢宝箱"
button.Font = Enum.Font.SourceSansBold
button.TextSize = 7 -- 最小字号
button.TextWrapped = true -- 文字自动换行
button.BorderSizePixel = 0
button.ZIndex = 9999
button.AutoButtonColor = false
button.Parent = gui

-- 添加海浪效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 100, 150)
stroke.Thickness = 1
stroke.Parent = button

-- 宝箱特效
local chestEffect = Instance.new("Frame")
chestEffect.Name = "ChestEffect"
chestEffect.Size = UDim2.new(0, 0, 0, 0)
chestEffect.Position = UDim2.new(0.5, 0, 0.5, 0)
chestEffect.AnchorPoint = Vector2.new(0.5, 0.5)
chestEffect.BackgroundColor3 = Color3.fromRGB(200, 150, 50)
chestEffect.BackgroundTransparency = 0.8
chestEffect.BorderSizePixel = 0
chestEffect.ZIndex = 9998
chestEffect.Parent = button

local chestCorner = Instance.new("UICorner")
chestCorner.CornerRadius = UDim.new(0.1, 0)
chestCorner.Parent = chestEffect

-- ===== 冲浪者手套功能 =====
button.MouseButton1Click:Connect(function()
    -- 执行丢宝箱脚本
    game:GetService("ReplicatedStorage").Events.Swashbuckler:FireServer()
    print("冲浪者手套已激活 - 丢出宝箱")
    
    -- 点击反馈
    button.Text = "丢宝箱中..."
    
    -- 宝箱抛出动画
    chestEffect.Size = UDim2.new(0, 0, 0, 0)
    chestEffect.BackgroundTransparency = 0.8
    chestEffect:TweenSize(UDim2.new(1.2, 0, 0.8, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.3)
    chestEffect:TweenBackgroundTransparency(1, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.3)
    
    task.wait(0.5)
    button.Text = "冲浪者手套\n无冷却丢宝箱"
end)

-- ===== 全平台拖动系统 =====
local UserInputService = game:GetService("UserInputService")
local isDragging = false
local dragStart, startPos

-- 输入开始（支持鼠标和触摸）
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        startPos = button.Position
        button.BackgroundColor3 = Color3.fromRGB(0, 130, 180) -- 拖动时变深色
    end
end)

-- 输入变化处理拖动
UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                      input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 输入结束
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        button.BackgroundColor3 = Color3.fromRGB(0, 150, 200) -- 恢复颜色
    end
end)

-- 设备适配提示
print("冲浪者手套按钮已加载")
print("提示: 点击按钮可无冷却丢出宝箱")

    end
})

Tab2:CreateButton({
    Name = "只捡红球",
    Callback = function()
        local args = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "只捡蓝球",
    Callback = function()
        local args = {
    [1] = "collectOrb",
    [2] = "Blue Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "只捡钻石",
    Callback = function()
        local args = {
    [1] = "collectOrb",
    [2] = "Gem",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "只捡橙球",
    Callback = function()
        local args = {
    [1] = "collectOrb",
    [2] = "Gem",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "只捡黄球",
    Callback = function()
        local args = {
    [1] = "collectOrb",
    [2] = "Yellow Orb",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买300的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Red Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买600的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Blue Orb"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买1.2k的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Yellow Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买2.5k的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Lightning Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买4k的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Snow Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买8k的水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Lava Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买40k水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Desert Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买50k水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Electro Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "购买100k水晶",
    Callback = function()
        local args = {
    [1] = "openCrystal",
    [2] = "Electro Legends Crystal"
}

game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab2:CreateButton({
    Name = "卡宠",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
})

Tab3:CreateButton({
    Name = "获得力量",
    Callback = function()
        local args = {
    [1] = "Strength"
}

game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
    end
})

Tab3:CreateButton({
    Name = "获得速度",
    Callback = function()
        local args = {
    [1] = "Speed"
}

game:GetService("ReplicatedStorage").Events.RainbowWhatStat:FireServer(unpack(args))
    end
})

Tab3:CreateButton({
    Name = "获得披萨",
    Callback = function()
        local args = {
    [1] = "Pizza"
}

game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
    end
})

Tab3:CreateButton({
    Name = "获得金苹果(数量1有效)",
    Callback = function()
       local args = {
    [1] = "GoldenApple"
}

game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args)
    end
})

Tab3:CreateButton({
    Name = "获取锤子",
    Callback = function()
        local args = {
    [1] = 3,
    [2] = "Hammer",
    [3] = "Weapons",
    [4] = "",
    [5] = 1
}

game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
    end
})

Tab3:CreateButton({
    Name = "自动捡金钱",
    Callback = function()
        getgenv().farm = true

while getgenv().farm do
task.wait()local args = {
    [1] = workspace.Money3
}

game:GetService("ReplicatedStorage").Events.FoundMoney:FireServer(unpack(args))
end
    end
})

Tab3:CreateButton({
    Name = "杀戮光环",
    Callback = function()
        getgenv().farm = true

while getgenv().farm do
task.wait()local args = {
    [1] = workspace.PizzaBossAlec.BadGuyPizza,
    [2] = 64.8,
    [3] = 4
}

game:GetService("ReplicatedStorage").Events.HitBadguy:FireServer(unpack(args))
end
    end
})

Tab4:CreateButton({
    Name = "自动草量",
    Callback = function()
        getgenv().farm = true

while getgenv().farm do
task.wait()local args = {
    [1] = {
        ["normal"] = 100,
        ["diamond"] = 100,
        ["silver"] = 100,
        ["ruby"] = 100,
        ["golden"] = 100
    }
}

game:GetService("ReplicatedStorage").Remotes.GrassCollect:FireServer(unpack(args))
end
    end
})

Tab4:CreateButton({
    Name = "自动重生",
    Callback = function()
        getgenv().farm = true

while getgenv().farm do
task.wait()game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
end
    end
})

Tab4:CreateButton({
    Name = "长草升级",
    Callback = function()
        local args = {
    [1] = {
        [1] = {
            ["currencyName"] = "Grass",
            ["autoBuy"] = false,
            ["amount"] = 1,
            ["max"] = 99,
            ["cost"] = 980105553297,
            ["upgradeValue"] = "GrassValue"
        }
    }
}

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
    end
})

Tab4:CreateButton({
    Name = "基因升级",
    Callback = function()
        local args = {
    [1] = {
        [1] = {
            ["currencyName"] = "Code",
            ["autoBuy"] = true,
            ["amount"] = 1,
            ["max"] = 999999999999999,
            ["cost"] = 0,
            ["upgradeValue"] = "GrassCode"
        },
        [2] = {
            ["currencyName"] = "Grass",
            ["autoBuy"] = true,
            ["amount"] = 1,
            ["max"] = 99,
            ["cost"] = 0,
            ["upgradeValue"] = "GrassValue"
        },
        [3] = {
            ["currencyName"] = "Code",
            ["autoBuy"] = true,
            ["amount"] = 1,
            ["max"] = 999999999999999,
            ["cost"] = 0,
            ["upgradeValue"] = "RebirthCode"
        },
        [4] = {
            ["currencyName"] = "Grass",
            ["autoBuy"] = true,
            ["amount"] = 1,
            ["max"] = 49,
            ["cost"] = 0,
            ["upgradeValue"] = "GrassAmount"
        }
    }
}

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
    end
})

Tab4:CreateButton({
    Name = "洒水升级",
    Callback = function()
        local args = {
    [1] = {
        [1] = {
            ["currencyName"] = "Grass",
            ["autoBuy"] = false,
            ["amount"] = 1,
            ["max"] = 7,
            ["cost"] = 80,
            ["upgradeValue"] = "SpawnRate1"
        }
    }
}

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
    end
})

Window:Show()

task.spawn(function()
    while task.wait(5) do
        if not Window.Enabled then
            Window:Show()
        end
    end
end)

Rayfield:Notify({
    Title = "加载完成",
    Content = "按RightShift键切换菜单",
    Duration = 5
})
