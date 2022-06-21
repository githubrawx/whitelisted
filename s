--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("EzP Winning", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Item", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")
local section3 = page:addSection("Section 3")

section1:addToggle("Show Hair/Skin/Face", false, function(value)
    _G.on3 = value
    game:GetService("Players").LocalPlayer.PlayerGui.SpawnGui.Enabled = false        
    while _G.on3 do
        game:GetService("Players").LocalPlayer.PlayerGui.SpawnGui.Enabled = true      
         wait()
    end
    end)
section1:addTextbox("Item", "", function(a)
print("Input", a)
getgenv().dropitem = a
end)
section1:addTextbox("Amount", "", function(a)
print("Input", a)
getgenv().dropamount = a
end)
section1:addButton("Drop", function(a)
print("Clicked")
for i=1, dropamount do game.ReplicatedStorage.Events.DropBagItem:FireServer(dropitem) end
end)
section2:addTextbox("Item Name", "", function(b)
    print("Input", b)
    getgenv().Itemname = b
    end)
section2:addButton("Craft", function(b)
    print("Clicked")
    local eventc = game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(Itemname)    end)

section3:addButton("Drop", function(a)
    print("Clicked")
    for i=1, dropamount do game.ReplicatedStorage.Events.DropBagItem:FireServer(dropitem) end
    end)
section3:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section3:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
   print("Selected", text)
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
colors:addButton("Destroy Gui", function()
    print("Clicked")
    game:GetService("CoreGui")["EzP Winning"]:Destroy()
end)

colors:addKeybind("Keybind Show Gui", Enum.KeyCode.RightControl, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
    end)

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom

local theme = venyx:addPage("Teleport", 5012544693)
local s1 = theme:addSection("Teleport")

s1:addButton("Arena 1", function()
    print("Clicked")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75, -111, -465)
end)

s1:addButton("Arena 2", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, -102, -248)
end)

s1:addButton("Arena 3", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19, -108, -326)
end)

s1:addButton("Arena 4", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, -113, -253)
end)

s1:addButton("Under Old God", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1115, -109, -689)
	game:GetService("Workspace").TpBack.TopOfWhiteAntArea:Destroy()
	game:GetService("Workspace").Terrain:Destroy()
end)

s1:addButton("Under Volcano", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1132, -78, 1199)
	game:GetService("Workspace").TpBack.TopOfLavaArea:Destroy()
end)

s1:addButton("Under Old God 2", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1112, -18, -992)
end)

s1:addButton("Under Volcano 2", function()
    print("Clicked")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1144, 4, 1252)
end)

local theme = venyx:addPage("Player", 5012544693)

local s2 = theme:addSection("Player")

s2:addTextbox("Player Name", "Full Name", function(c)
    print("Input", c)
    getgenv().imagine = c
    end)
s2:addButton("Player TP", function(c)
    print("Clicked")
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local p2 = "imagine"    
    p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
    wait(0)
end)

local s3 = theme:addSection("Player")

s3:addButton("Off Animation", function()
    print("Clicked")
    game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()
end)
