-- // FPS Booster - 正常亮度
if getgenv().FPSBooster then return end
getgenv().FPSBooster = true

local Lighting = game:GetService("Lighting")
local Workspace = workspace

Lighting.GlobalShadows = false
Lighting.FogEnd = 999999
Lighting.FogStart = 0
Lighting.Brightness = 1
Lighting.BloomSize = 0
Lighting.BlurSize = 0

pcall(function()
    for _, v in ipairs(Lighting:GetChildren()) do
        if v.Name:find("Bloom") or v.Name:find("Blur") or v.Name:find("SunRays") or v.Name:find("Depth") then
            v:Destroy()
        end
    end
end)

for _, v in ipairs(Workspace:GetDescendants()) do
    pcall(function()
        if v:IsA("Texture") or v:IsA("Decal") then v:Destroy() end
        if v:IsA("ParticleEmitter") then v:Destroy() end
        if v:IsA("BasePart") then v.CastShadow = false end
    end)
end

Workspace.DescendantAdded:Connect(function(v)
    pcall(function()
        if v:IsA("Texture") or v:IsA("Decal") then v:Destroy() end
        if v:IsA("ParticleEmitter") then v:Destroy() end
        if v:IsA("BasePart") then v.CastShadow = false end
    end)
end)

print("⚡ FPS Booster 已開啟")-- // FPS Booster - 正常亮度
if getgenv().FPSBooster then return end
getgenv().FPSBooster = true

local Lighting = game:GetService("Lighting")
local Workspace = workspace

Lighting.GlobalShadows = false
Lighting.FogEnd = 999999
Lighting.FogStart = 0
Lighting.Brightness = 1
Lighting.BloomSize = 0
Lighting.BlurSize = 0

pcall(function()
    for _, v in ipairs(Lighting:GetChildren()) do
        if v.Name:find("Bloom") or v.Name:find("Blur") or v.Name:find("SunRays") or v.Name:find("Depth") then
            v:Destroy()
        end
    end
end)

for _, v in ipairs(Workspace:GetDescendants()) do
    pcall(function()
        if v:IsA("Texture") or v:IsA("Decal") then v:Destroy() end
        if v:IsA("ParticleEmitter") then v:Destroy() end
        if v:IsA("BasePart") then v.CastShadow = false end
    end)
end

Workspace.DescendantAdded:Connect(function(v)
    pcall(function()
        if v:IsA("Texture") or v:IsA("Decal") then v:Destroy() end
        if v:IsA("ParticleEmitter") then v:Destroy() end
        if v:IsA("BasePart") then v.CastShadow = false end
    end)
end)

print("⚡ FPS Booster 已開啟")
