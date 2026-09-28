-- IslandBuilder.server.luau
-- Creates 4 floating islands: jungle, ice, lava, crystal with distinct colors and materials

local Workspace = game:GetService("Workspace")

-- Define island properties: name, color (BrickColor), material
local islands = {
    { name = "Jungle", color = BrickColor.new("Bright green"), material = Enum.Material.Grass },
    { name = "Ice",    color = BrickColor.new("Ice blue"),   material = Enum.Material.Ice },
    { name = "Lava",   color = BrickColor.new("Bright red"), material = Enum.Material.Neon },
    { name = "Crystal",color = BrickColor.new("Really purple"), material = Enum.Material.Glass },
}

-- Island size and spacing
local islandSize = Vector3.new(30, 5, 30) -- width, height, depth
local spacing = 40 -- distance between island centers (studs)
local startX = -((#islands - 1) * spacing) / 2 -- center the line at X=0
local height = 20 -- floating height above ground

for i, info in ipairs(islands) do
    local part = Instance.new("Part")
    part.Name = info.name .. "Island"
    part.Size = islandSize
    part.Position = Vector3.new(startX + (i - 1) * spacing, height, 0)
    part.BrickColor = info.color
    part.Material = info.material
    part.Anchored = true
    part.TopSurface = Enum.SurfaceType.Smooth
    part.BottomSurface = Enum.SurfaceType.Smooth
    part.Parent = Workspace
end