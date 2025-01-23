local Speed = 50
local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/Ui-Librarys/main/Gerad's/source.lua"))()

local Window = Library:CreateWindow('飞车')

local Section = Window:Section('飞车')

Section:Toggle('开关', {flag = 'Toggle'},function(op)
if op then
local BV = Instance.new("BodyVelocity",HumanoidRP)
local BG = Instance.new("BodyGyro",HumanoidRP)
BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
BG.D = 5000
BG.P = 50000
BG.CFrame = game.Workspace.CurrentCamera.CFrame
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
else
HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
end
end)

Section:Button('前进', function()
HumanoidRP.Anchored = false
HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
wait(.1)
local BV = Instance.new("BodyVelocity",HumanoidRP)
local BG = Instance.new("BodyGyro",HumanoidRP)
BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
BG.D = 5000
BG.P = 50000
BG.CFrame = game.Workspace.CurrentCamera.CFrame
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
end)

Section:Button('后退', function()
HumanoidRP.Anchored = false
HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
wait(.1)
local BV = Instance.new("BodyVelocity",HumanoidRP)
local BG = Instance.new("BodyGyro",HumanoidRP)
BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
BG.D = 5000
BG.P = 50000
BG.CFrame = game.Workspace.CurrentCamera.CFrame
BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
end)
