-- // FPS Booster - 去除貼圖 + 畫面清晰 + 防Ban
if getgenv().FPSBooster then return end
getgenv().FPSBooster = true

local Lighting = game:GetService("Lighting")
local Workspace = workspace
local HttpService = game:GetService("HttpService")

-- // 🛡️ 隨機ID
local _SID = HttpService:GenerateGUID():sub(1, 6)

-- // 移除舊天空
for _, v in ipairs(Lighting:GetChildren()) do
    if v:IsA("Sky") then v:Destroy() end
end

-- // 保持清晰明亮
Lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
Lighting.Ambient = Color3.fromRGB(180, 180, 180)
Lighting.FogColor = Color3.fromRGB(170, 170, 170)
Lighting.FogEnd = 999999
Lighting.FogStart = 0
Lighting.Brightness = 2.5
Lighting.ExposureCompensation = 1
Lighting.ClockTime = 12
Lighting.TimeOfDay = "12:00:00"

Lighting.GlobalShadows = false
Lighting.BloomSize = 0
Lighting.BlurSize = 0

pcall(function()
    if Lighting:FindFirstChild("Bloom") then Lighting.Bloom:Destroy() end
    if Lighting:FindFirstChild("Blur") then Lighting.Blur:Destroy() end
    if Lighting:FindFirstChild("SunRays") then Lighting.SunRays:Destroy() end
    if Lighting:FindFirstChild("DepthOfField") then Lighting.DepthOfField:Destroy() end
end)

-- // 只移除貼圖
for _, v in ipairs(Workspace:GetDescendants()) do
    if v:IsA("Texture") or v:IsA("Decal") then
        pcall(function() v:Destroy() end)
    end
    if v:IsA("ParticleEmitter") then
        pcall(function() v:Destroy() end)
    end
    if v:IsA("BasePart") then
        v.CastShadow = false
    end
end

Workspace.DescendantAdded:Connect(function(v)
    if v:IsA("Texture") or v:IsA("Decal") then
        pcall(function() v:Destroy() end)
    end
    if v:IsA("ParticleEmitter") then
        pcall(function() v:Destroy() end)
    end
    if v:IsA("BasePart") then
        v.CastShadow = false
    end
end)

print("⚡ FPS Booster 已啟用 [" .. _SID .. "]")
