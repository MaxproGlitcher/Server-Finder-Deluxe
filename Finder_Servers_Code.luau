--[[By MaxproGlitcher Discord:maxproglitcher

-- Site Web official: https://github.com/MaxproGlitcher/Server-Finder-Deluxe
   
   _____                                       ________.__  .__  __         .__                  
  /     \ _____  ___  ________________  ____  /  _____/|  | |__|/  |_  ____ |  |__   ___________ 
 /  \ /  \\__  \ \  \/  /\____ \_  __ \/  _ \/   \  ___|  | |  \   __\/ ___\|  |  \_/ __ \_  __ \
/    Y    \/ __ \_>    < |  |_> >  | \(  <_> )    \_\  \  |_|  ||  | \  \___|   Y  \  ___/|  | \/
\____|__  (____  /__/\_ \|   __/|__|   \____/ \______  /____/__||__|  \___  >___|  /\___  >__|   
        \/     \/      \/|__|                        \/                   \/     \/     \/    
  

--------------------------------------------------------------------------------------------------------------------


   _____                            ______ _           _             _____       _                
  / ____|                          |  ____(_)         | |           |  __ \     | |               
 | (___   ___ _ ____   _____ _ __  | |__   _ _ __   __| | ___ _ __  | |  | | ___| |_   ___  _____ 
  \___ \ / _ \ '__\ \ / / _ \ '__| |  __| | | '_ \ / _` |/ _ \ '__| | |  | |/ _ \ | | | \ \/ / _ \
  ____) |  __/ |   \ V /  __/ |    | |    | | | | | (_| |  __/ |    | |__| |  __/ | |_| |>  <  __/
 |_____/ \___|_|    \_/ \___|_|    |_|    |_|_| |_|\__,_|\___|_|    |_____/ \___|_|\__,_/_/\_\___|
                                                                                                  
                                                                                                  
]]
--------------------------------------------------------------------------------------------------------------------
if not game:IsLoaded() then
	game.Loaded:Wait()
end

local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Parent = CoreGui
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local blur = Instance.new("BlurEffect")
blur.Parent = Lighting
blur.Size = 12

local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.new(0, 420, 0, 260)
main.Position = UDim2.new(0.5, -210, 0.5, -130)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.BorderSizePixel = 0
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel")
title.Parent = main
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 10)
title.Font = Enum.Font.GothamBlack
title.TextSize = 40
title.TextColor3 = Color3.fromRGB(240, 240, 240)
title.Text = "Server Finder Deluxe"

local versionLabel = Instance.new("TextLabel")
versionLabel.Parent = main
versionLabel.BackgroundTransparency = 1
versionLabel.Size = UDim2.new(1, 0, 0, 20)
versionLabel.Position = UDim2.new(0, 0, 0, 70)
versionLabel.Font = Enum.Font.GothamMedium
versionLabel.TextSize = 16
versionLabel.TextColor3 = Color3.fromRGB(210, 210, 210)
versionLabel.Text = "Ultimate Server Scanner"

local status = Instance.new("TextLabel")
status.Parent = main
status.BackgroundTransparency = 1
status.Size = UDim2.new(1, 0, 0, 30)
status.Position = UDim2.new(0, 0, 0, 105)
status.Font = Enum.Font.Gotham
status.TextSize = 18
status.TextColor3 = Color3.fromRGB(200, 200, 200)
status.Text = "Loading..."

local percent = Instance.new("TextLabel")
percent.Parent = main
percent.BackgroundTransparency = 1
percent.Size = UDim2.new(1, 0, 0, 25)
percent.Position = UDim2.new(0, 0, 0, 135)
percent.Font = Enum.Font.GothamBold
percent.TextSize = 20
percent.TextColor3 = Color3.fromRGB(200, 200, 200)
percent.Text = "0%"

local barBack = Instance.new("Frame")
barBack.Parent = main
barBack.Size = UDim2.new(0, 280, 0, 8)
barBack.Position = UDim2.new(0.5, -140, 0, 165)
barBack.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
barBack.BorderSizePixel = 0
Instance.new("UICorner", barBack).CornerRadius = UDim.new(0, 4)

local bar = Instance.new("Frame")
bar.Parent = barBack
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 4)

local credit = Instance.new("TextLabel")
credit.Parent = main
credit.BackgroundTransparency = 1
credit.Size = UDim2.new(0, 200, 0, 20)
credit.Position = UDim2.new(1, -210, 1, -30)
credit.Font = Enum.Font.Gotham
credit.TextSize = 16
credit.TextColor3 = Color3.fromRGB(170, 170, 170)
credit.TextXAlignment = Enum.TextXAlignment.Right
credit.Text = "By MaxproGlitcher"

local discord = Instance.new("TextLabel")
discord.Parent = main
discord.BackgroundTransparency = 1
discord.Size = UDim2.new(0, 220, 0, 20)
discord.Position = UDim2.new(0, 10, 1, -30) 
discord.Font = Enum.Font.Gotham
discord.TextSize = 16
discord.TextColor3 = Color3.fromRGB(170, 170, 170)
discord.TextXAlignment = Enum.TextXAlignment.Left
discord.Text = "Discord : maxproglitcher"

local function GetEasterDate(year)
	local A = math.floor(year/100)
	local B = math.floor((13+8*A)/25)
	local C = (15-B+A-math.floor(A/4))%30
	local D = (4+A-math.floor(A/4))%7
	local E = (19*(year%19)+C)%30
	local F = (2*(year%4)+4*(year%7)+6*E+D)%7
	local G = 22 + E + F

	if E == 29 and F == 6 then
		return 4, 19
	elseif E == 28 and F == 6 then
		return 4, 18
	elseif G > 31 then
		return 4, G-31
	else
		return 3, G
	end
end


local isXmas, isHalloween, isNewYear, isEaster, isValentine = false, false, false, false, false

local success, err = pcall(function()
	local date = os.date("*t")
	local emonth, eday = GetEasterDate(date.year)
	isXmas = date.month == 12 and date.day >= 15 and date.day <= 29
	isHalloween = (date.month == 10 and date.day >= 23) or (date.month == 11 and date.day <= 1)
	isNewYear = (date.month == 12 and date.day >= 30) or (date.month == 1 and date.day <= 2)
	isValentine = (date.month == 2 and date.day == 14)
    isEaster = (date.month == emonth and date.day == eday) 
end)

if not success then
	warn("Date system error for loading gui:", err)
end

local function decorate(startEmoji, endEmoji)
	title.Text = startEmoji .. " Server Finder Deluxe " .. endEmoji
	title.TextSize = 32
end

local function cycle(colors)
	local i = 1
	task.spawn(function()
		while gui.Parent do
			local c = colors[i]
			title.TextColor3 = c
			versionLabel.TextColor3 = c
			status.TextColor3 = c
			credit.TextColor3 = c
			percent.TextColor3 = c
			bar.BackgroundColor3 = c
			
			if discord then
				discord.TextColor3 = c
			end
			
			i = i % #colors + 1
			task.wait(0.5)
		end
	end)
end

if isXmas then
	decorate("🎄", "🎄")
	cycle({
		Color3.fromRGB(0,255,0), 
		Color3.fromRGB(255,0,0), 
		Color3.fromRGB(255,255,255)})
elseif isHalloween then
	decorate("🎃", "🎃")
	cycle({
		Color3.fromRGB(0,0,0), 
		Color3.fromRGB(255,165,0)})
elseif isNewYear then
	decorate("🎉", "🎉")
	cycle({
		Color3.fromRGB(255,255,0), 
		Color3.fromRGB(0,0,0)})
elseif isEaster then
	decorate("🐰", "🐰")
	cycle({
		Color3.fromRGB(216,191,216),
		Color3.fromRGB(255,182,193),
		Color3.fromRGB(193,225,193),
		Color3.fromRGB(173,216,230)
	})
elseif isValentine then
	decorate("💗", "💗")
	cycle({
		Color3.fromRGB(0,0,0), 
		Color3.fromRGB(255,85,127)})
end


local loading = true

pcall(function()
	task.spawn(function()
		while loading and status and status.Parent do
			for i = 1, 3 do
				if not loading then break end
				status.Text = "Loading" .. string.rep(".", i)
				task.wait(0.4)
			end
			if not loading then break end
			status.Text = "Loading"
			task.wait(0.4)
		end
	end)
end)


pcall(function()
	local duration = 2
	TweenService:Create(
		bar,
		TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ Size = UDim2.new(1, 0, 1, 0) }
	):Play()

	for i = 0, 100 do
		if not percent or not percent.Parent then break end
		percent.Text = i .. "%"
		task.wait(duration / 100)
	end
end)

loading = false
status.Text = "Success"

task.wait(0.30)

if blur then
	blur:Destroy()
end

if gui then
	gui:Destroy()
end

--------------------------------------------------------------------------------------------------------------------

if _G.SFD_LOADED and not _G.SFD_CAN_RELOAD then
	-- error("Server Finder Deluxe is already running!", 0)
	return 
end

_G.SFD_LOADED = true
_G.SFD_CAN_RELOAD = false

if not game:IsLoaded() then game.Loaded:Wait() end

-- Compatibilité getgenv

pcall(function()
	if game:GetService("CoreGui"):FindFirstChild("incognito") then
		local oldstring = loadstring
		getfenv().loadstring = function(code)
			local source = code
			source = source:gsub("(%a+)%s*([%+%-%*/])=%s*", "%1 = %1 %2 ")
			return oldstring(source)
		end
	end

	if not getgenv then
		getfenv().getgenv = function(layer)
			return getfenv(layer)
		end
	end
end)

getgenv().NextServer = nil
getgenv().HasScannedAll = false


-- Services
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local TweenService = game:GetService("TweenService")
local VRService = game:GetService("VRService")
local CaptureService = game:GetService("CaptureService")
local SoundService = game:GetService("SoundService")

local camera = workspace.CurrentCamera or workspace:FindFirstChildOfClass("Camera")
if not camera then
	repeat task.wait() camera = workspace.CurrentCamera until camera
end

local SCREEN_SIZE = camera.ViewportSize
local platform = UserInputService:GetPlatform()

local IsOnMobile = (function() if platform == Enum.Platform.IOS or platform == Enum.Platform.Android or platform == Enum.Platform.AndroidTV or platform == Enum.Platform.Chromecast or platform == Enum.Platform.MetaOS then
		return true
	end

	if platform == Enum.Platform.None then
		return UserInputService.TouchEnabled and not (UserInputService.KeyboardEnabled or UserInputService.MouseEnabled)
	end

	return false
end)()

local IsOnPC = (function() if platform == Enum.Platform.Windows or platform == Enum.Platform.OSX or platform == Enum.Platform.Linux or platform == Enum.Platform.SteamOS or platform == Enum.Platform.UWP or platform == Enum.Platform.DOS or platform == Enum.Platform.BeOS then
		return true
	end

	if platform == Enum.Platform.None then
		return UserInputService.KeyboardEnabled or UserInputService.MouseEnabled
	end

	return false
end)()

local VREnabled = game:GetService("VRService").VREnabled

local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

--------------------------------------------------------------------------------------------------------------------
local LocalizationService = game:GetService("LocalizationService")
local TweenService = game:GetService("TweenService")


local hasGetGenv = false

pcall(function()
	if typeof(getgenv) == "function" then
		hasGetGenv = true
	end
end)


local requestFunc
local httpSuccess = false

pcall(function()
	if syn and syn.request then
		requestFunc = syn.request
	elseif http and http.request then
		requestFunc = http.request
	elseif http_request then
		requestFunc = http_request
	elseif fluxus and fluxus.request then
		requestFunc = fluxus.request
	elseif request then
		requestFunc = request
	end
end)

if requestFunc then
	httpSuccess = true
end


local translations = {
	fr = {
		getgenv = "La fonction getgenv est introuvable ! ⚠️",
		http = "Aucune fonction HTTP supportée trouvée ! ⚠️"
	},
	en = {
		getgenv = "getgenv function not found! ⚠️",
		http = "No supported HTTP request function found! ⚠️"
	},
	es = {
		getgenv = "¡Función getgenv no encontrada! ⚠️",
		http = "¡No se encontró ninguna función HTTP compatible! ⚠️"
	},
	pt = {
		getgenv = "Função getgenv não encontrada! ⚠️",
		http = "Nenhuma função HTTP suportada encontrada! ⚠️"
	},
	tr = {
		getgenv = "getgenv işlevi bulunamadı! ⚠️",
		http = "Desteklenen HTTP isteği işlevi bulunamadı! ⚠️"
	},
	it = {
		getgenv = "Funzione getgenv non trovata! ⚠️",
		http = "Nessuna funzione HTTP supportata trovata! ⚠️"
	},
	de = {
		getgenv = "getgenv-Funktion nicht gefunden! ⚠️",
		http = "Keine unterstützte HTTP-Anfragefunktion gefunden! ⚠️"
	},
	ar = {
		getgenv = "لم يتم العثور على دالة getgenv! ⚠️",
		http = "لم يتم العثور على أي دالة HTTP مدعومة! ⚠️"
	},
	ja = {
		getgenv = "getgenv 関数が見つかりません！⚠️",
		http = "サポートされているHTTPリクエスト機能が見つかりません！⚠️"
	},
	ru = {
		getgenv = "Функция getgenv не найдена! ⚠️",
		http = "Поддерживаемая функция HTTP-запроса не найдена! ⚠️"
	},
	zh = {
		getgenv = "未找到 getgenv 函数！⚠️",
		http = "未找到受支持的HTTP请求函数！⚠️"
	}
}

local function getTranslatedMessage()
	local langCode = (LocalizationService.RobloxLocaleId or "en"):sub(1,2)
	return langText[langCode] or langText["en"]
end


local NotificationLib = {
	_notifications = {},
	_theme = {
		primaryColor = Color3.fromRGB(30,30,30),
		textColor = Color3.fromRGB(255,255,255),
		font = Enum.Font.GothamSemibold,
		cornerRadius = UDim.new(0,8)
	},
	_settings = {
		duration = 4,
		spacing = 12,
		fadeTime = 0.28,
		slideDistance = 18
	},
	_icons = { info = "rbxassetid://9405926389" }
}

function NotificationLib:_init()
	if not self._container then
		self._container = Instance.new("ScreenGui")
		self._container.Name = "NotificationLibrary"
		self._container.ResetOnSpawn = false
		self._container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self._container.Parent = game:GetService("CoreGui")
	end
end

function NotificationLib:_calculatePosition(i)
	return UDim2.new(1, -24, 1, -24 - (i-1)*(90 + self._settings.spacing))
end

function NotificationLib:_animateOut(frame)
	local tween = TweenService:Create(
		frame,
		TweenInfo.new(self._settings.fadeTime, Enum.EasingStyle.Quad),
		{
			Position = frame.Position + UDim2.new(0,0,0,self._settings.slideDistance),
			BackgroundTransparency = 1
		}
	)
	tween:Play()
	tween.Completed:Connect(function()
		if frame.Parent then frame:Destroy() end
	end)
end

function NotificationLib:Notify(opt)
	self:_init()
	opt = opt or {}

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0,340,0,90)
	frame.AnchorPoint = Vector2.new(1,1)
	frame.Position = self:_calculatePosition(#self._notifications + 1)
	frame.BackgroundColor3 = self._theme.primaryColor
	frame.Parent = self._container
	Instance.new("UICorner", frame).CornerRadius = self._theme.cornerRadius

	local title = Instance.new("TextLabel", frame)
	title.Text = opt.Title or "Notification"
	title.Font = self._theme.font
	title.TextColor3 = self._theme.textColor
	title.TextSize = 16
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.BackgroundTransparency = 1
	title.Size = UDim2.new(1,-60,0,22)
	title.Position = UDim2.new(0,48,0,10)

	local msg = Instance.new("TextLabel", frame)
	msg.Text = opt.Message or ""
	msg.Font = Enum.Font.Gotham
	msg.TextColor3 = self._theme.textColor
	msg.TextSize = 14
	msg.TextWrapped = true
	msg.TextXAlignment = Enum.TextXAlignment.Left
	msg.BackgroundTransparency = 1
	msg.Size = UDim2.new(1,-60,0,48)
	msg.Position = UDim2.new(0,48,0,30)

	table.insert(self._notifications, frame)

	task.delay(opt.Duration or self._settings.duration, function()
		self:_animateOut(frame)
	end)
end



if not hasGetGenv then
	warn("[EXPLOIT WARNING] getgenv function not found")
	NotificationLib:Notify({
		Title = "EXPLOIT WARNING",
		Message = getMessage("getgenv"),
		Duration = 5
	})
end

if not httpSuccess then
	warn("[HTTP WARNING] No supported HTTP request function found")
	NotificationLib:Notify({
		Title = "HTTP WARNING",
		Message = getMessage("http"),
		Duration = 5
	})
end


_G.MISSING_GETGENV = not hasGetGenv
_G.MISSING_HTTP = not httpSuccess

--------------------------------------------------------------------------------------------------------------------

local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))

-- Essayer de créer un parent vers un emplacement protégé
pcall(function()
	if gethui then
		screenGui.Parent = gethui()
	elseif syn and syn.protect_gui then
		syn.protect_gui(screenGui)
		screenGui.Parent = game:GetService("CoreGui")
	else
		screenGui.Parent = game:GetService("CoreGui")
	end
end)

if not screenGui.Parent then
	screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end


local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 650, 0, 500)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0

-- Détection des Screen 

if isOnMobile or SCREEN_SIZE.X < 800 then
	mainFrame.Size = UDim2.new(0, 800, 0, 600)
else
	mainFrame.Size = UDim2.new(0, 650, 0, 500)
end

local dragging, dragInput, dragStart, startPos
local function updateDrag(input)
	local delta = input.Position - dragStart
	local pos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	TweenService:Create(mainFrame, TweenInfo.new(0.15), {Position = pos}):Play()
end

mainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

mainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then updateDrag(input) end
end)

-- Logo Server Finder Deluxe  
local logo = Instance.new("ImageLabel")
logo.Name = "BackgroundLogoServeFinderDeluxe"
logo.Parent = mainFrame
logo.Size = UDim2.new(0.8, 0, 0.8, 0)
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Position = UDim2.new(0.5, 0, 0.5, 0) 
logo.BackgroundTransparency = 1
logo.ImageTransparency = 0.88
logo.ScaleType = Enum.ScaleType.Fit
logo.ZIndex = 2



local function loadLogo()
	repeat
		if mainFrame.Parent then             
			local success = pcall(function() 
				logo.Image = "http://www.roblox.com/asset/?id=75503909317175" 
			end)
			if success and logo.Image and logo.Image ~= "" then
				break 
			end
		end
		task.wait(0.5) 
	until logo.Image and logo.Image ~= ""
end

task.defer(loadLogo)


--------------------------------------------------------------------------------------------------------------------



local TweenService = game:GetService("TweenService")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetEasterDate(year)
	local A = math.floor(year/100)
	local B = math.floor((13+8*A)/25)
	local C = (15-B+A-math.floor(A/4))%30
	local D = (4+A-math.floor(A/4))%7
	local E = (19*(year%19)+C)%30
	local F = (2*(year%4)+4*(year%7)+6*E+D)%7
	local G = 22 + E + F

	if E == 29 and F == 6 then
		return 4, 19
	elseif E == 28 and F == 6 then
		return 4, 18
	elseif G > 31 then
		return 4, G-31
	else
		return 3, G
	end
end

local isXmas, isNewYear, isEaster, isHalloween, isValentine = false, false, false, false, false

local success, err = pcall(function()
	local date = os.date("*t")
	local emonth, eday = GetEasterDate(date.year)
	isXmas = date.month == 12 and date.day >= 15 and date.day <= 29
	isHalloween = (date.month == 10 and date.day >= 23) or (date.month == 11 and date.day <= 1)
	isNewYear = (date.month == 12 and date.day >= 30) or (date.month == 1 and date.day <= 2)
	isValentine = (date.month == 2 and date.day == 14)
	isEaster = (date.month == emonth and date.day == eday)
end)

if not success then
	warn("Date system error for the welcome message:", err)
end

local holidayTexts = {
	Christmas = {
		["fr"] = "🎄 Joyeux Noël !",
		["en"] = "🎄 Merry Christmas!",
		["es"] = "🎄 ¡Feliz Navidad!",
		["pt"] = "🎄 Feliz Natal!",
		["tr"] = "🎄 Mutlu Noeller!",
		["it"] = "🎄 Buon Natale!",
		["de"] = "🎄 Frohe Weihnachten!",
		["ar"] = "🎄 عيد ميلاد سعيد!",
		["ja"] = "🎄 メリークリスマス！",
		["ru"] = "🎄 С Рождеством!",
		["zh"] = "🎄 圣诞快乐！"
	},
	NewYear = {
		["fr"] = "🎉 Bonne année !",
		["en"] = "🎉 Happy New Year!",
		["es"] = "🎉 ¡Feliz Año Nuevo!",
		["pt"] = "🎉 Feliz Ano Novo!",
		["tr"] = "🎉 Mutlu Yıllar!",
		["it"] = "🎉 Buon Anno!",
		["de"] = "🎉 Frohes Neues Jahr!",
		["ar"] = "🎉 سنة جديدة سعيدة!",
		["ja"] = "🎉 明けましておめでとう！",
		["ru"] = "🎉 С Новым годом!",
		["zh"] = "🎉 新年快乐！"
	},
	Easter = {
		["fr"] = "🐰 Joyeuses Pâques !",
		["en"] = "🐰 Happy Easter!",
		["es"] = "🐰 ¡Feliz Pascua!",
		["pt"] = "🐰 Feliz Páscoa!",
		["tr"] = "🐰 Mutlu Paskalyalar!",
		["it"] = "🐰 Buona Pasqua!",
		["de"] = "🐰 Frohe Ostern!",
		["ar"] = "🐰 عيد فصح سعيد!",
		["ja"] = "🐰 ハッピーイースター！",
		["ru"] = "🐰 С Пасхой!",
		["zh"] = "🐰 复活节快乐！"
	},
	Halloween = {
		["fr"] = "🎃 Joyeux Halloween !",
		["en"] = "🎃 Happy Halloween!",
		["es"] = "🎃 ¡Feliz Halloween!",
		["pt"] = "🎃 Feliz Dia das Bruxas!",
		["tr"] = "🎃 Mutlu Cadılar Bayramı!",
		["it"] = "🎃 Buon Halloween!",
		["de"] = "🎃 Frohes Halloween!",
		["ar"] = "🎃 عيد هالوين سعيد!",
		["ja"] = "🎃 ハッピーハロウィン！",
		["ru"] = "🎃 С Хэллоуином!",
		["zh"] = "🎃 万圣节快乐！"
	},
	Valentine = {
		["fr"] = "💖 Bonne Saint-Valentin !",
		["en"] = "💖 Happy Valentine's Day!",
		["es"] = "💖 ¡Feliz Día de San Valentín!",
		["pt"] = "💖 Feliz Dia dos Namorados!",
		["tr"] = "💖 Sevgililer Gününüz Kutlu Olsun!",
		["it"] = "💖 Buon San Valentino!",
		["de"] = "💖 Alles Gute zum Valentinstag!",
		["ar"] = "💖 عيد حب سعيد!",
		["ja"] = "💖 ハッピーバレンタイン！",
		["ru"] = "💖 С Днем Святого Валентина!",
		["zh"] = "💖 情人节快乐！"
	},
	Welcome = {
		["fr"] = "👋 Bienvenue sur Server Finder Deluxe !",
		["en"] = "👋 Welcome to Server Finder Deluxe!",
		["es"] = "👋 ¡Bienvenido a Server Finder Deluxe!",
		["pt"] = "👋 Bem-vindo ao Server Finder Deluxe!",
		["tr"] = "👋 Server Finder Deluxe'a Hoş Geldiniz!",
		["it"] = "👋 Benvenuto su Server Finder Deluxe!",
		["de"] = "👋 Willkommen bei Server Finder Deluxe!",
		["ar"] = "👋 مرحبًا بك في Server Finder Deluxe!",
		["ja"] = "👋 Server Finder Deluxeへようこそ！",
		["ru"] = "👋 Добро пожаловать в Server Finder Deluxe!",
		["zh"] = "👋 欢迎使用 Server Finder Deluxe！"
	}
}


local function getHolidayMessage(eventKey)
	local langCode = (LocalizationService.RobloxLocaleId or "en"):sub(1,2)
	local eventTable = holidayTexts[eventKey]
	return eventTable and (eventTable[langCode] or eventTable["en"]) or "Happy holidays! 🎉"
end


local NotificationLib = {
	_notifications = {},
	_theme = {
		primaryColor = Color3.fromRGB(30, 30, 30),
		textColor = Color3.fromRGB(255, 255, 255),
		font = Enum.Font.GothamSemibold,
		cornerRadius = UDim.new(0, 8)
	},
	_settings = {
		duration = 4,
		spacing = 12,
		fadeTime = 0.28,
		slideDistance = 18
	},
	_icons = { info = "rbxassetid://9405926389" }
}

function NotificationLib:_init()
	if not self._container then
		self._container = Instance.new("ScreenGui")
		self._container.Name = "NotificationLibrary"
		self._container.ResetOnSpawn = false
		self._container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self._container.Parent = game:GetService("CoreGui")
	end
end

function NotificationLib:_calculatePosition(index)
	local spacing = self._settings.spacing
	local height = 90
	return UDim2.new(1, -24, 1, -24 - (index-1)*(height+spacing))
end

function NotificationLib:_animateOut(frame, callback)
	local tween = TweenService:Create(frame, TweenInfo.new(self._settings.fadeTime, Enum.EasingStyle.Quad), {
		Position = frame.Position + UDim2.new(0,0,0,self._settings.slideDistance),
		BackgroundTransparency = 1
	})
	tween:Play()
	tween.Completed:Connect(function()
		if frame and frame.Parent then frame:Destroy() end
		if callback then callback() end
	end)
end

function NotificationLib:Notify(opt)
	self:_init()
	opt = opt or {}
	local title = opt.Title or "Notification"
	local message = opt.Message or ""
	local duration = opt.Duration or self._settings.duration

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = self._theme.primaryColor
	frame.Size = UDim2.new(0, 340, 0, 90)
	frame.AnchorPoint = Vector2.new(1,1)
	frame.Position = self:_calculatePosition(#self._notifications + 1)
	frame.Parent = self._container
	Instance.new("UICorner", frame).CornerRadius = self._theme.cornerRadius

	local icon = Instance.new("ImageLabel", frame)
	icon.Image = self._icons.info
	icon.Size = UDim2.new(0,28,0,28)
	icon.Position = UDim2.new(0,12,0,12)
	icon.BackgroundTransparency = 1

	local titleLabel = Instance.new("TextLabel", frame)
	titleLabel.Font = self._theme.font
	titleLabel.TextColor3 = self._theme.textColor
	titleLabel.TextSize = 16
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Text = title
	titleLabel.BackgroundTransparency = 1
	titleLabel.Size = UDim2.new(1,-60,0,22)
	titleLabel.Position = UDim2.new(0,48,0,10)

	local msgLabel = Instance.new("TextLabel", frame)
	msgLabel.Font = Enum.Font.Gotham
	msgLabel.TextColor3 = self._theme.textColor
	msgLabel.TextSize = 14
	msgLabel.TextWrapped = true
	msgLabel.TextXAlignment = Enum.TextXAlignment.Left
	msgLabel.Text = message
	msgLabel.BackgroundTransparency = 1
	msgLabel.Size = UDim2.new(1,-60,0,48)
	msgLabel.Position = UDim2.new(0,48,0,30)

	table.insert(self._notifications, frame)

	task.delay(duration, function()
		if frame and frame.Parent then
			self:_animateOut(frame, function()
				for i,v in ipairs(self._notifications) do
					if v == frame then table.remove(self._notifications,i); break end
				end
			end)
		end
	end)
end


local eventName
local message

if isXmas then
	eventName = "🎄 Christmas"
	message = getHolidayMessage("Christmas")
elseif isNewYear then
	eventName = "🎉 New Year"
	message = getHolidayMessage("NewYear")
elseif isEaster then
	eventName = "🐰 Easter"
	message = getHolidayMessage("Easter")
elseif isHalloween then
	eventName = "🎃 Halloween"
	message = getHolidayMessage("Halloween")
elseif isValentine then
	eventName = "💖 Valentine's Day"
	message = getHolidayMessage("Valentine")
else
	eventName = "👋 Welcome"
	message = getHolidayMessage("Welcome")
end

task.wait(2)
NotificationLib:Notify({
	Title = eventName,
	Message = message,
	Duration = 6
})


--------------------------------------------------------------------------------------------------------------------

-- protection lors du screen shot le Gui deviendras invisible lors du screen shot

pcall(function()
	local CaptureService = game:GetService("CaptureService")

	CaptureService.CaptureBegan:Connect(function()
		screenGui.Enabled = false
	end)

	CaptureService.CaptureEnded:Connect(function()
		task.delay(0.5, function()
			screenGui.Enabled = true
		end)
	end)
end)

--------------------------------------------------------------------------------------------------------------------

-- Titre du Gui et la Version

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 5, 0, 0) 
title.BackgroundTransparency = 1
title.Text = "Server Finder Deluxe"
title.Font = Enum.Font.Ubuntu
title.TextSize = 30
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local versionLabel = Instance.new("TextLabel", mainFrame)
versionLabel.Size = UDim2.new(0, 150, 0, 25)
versionLabel.Position = UDim2.new(0, 10, 0, 8)
versionLabel.BackgroundTransparency = 1
versionLabel.Text = "v6.3"
versionLabel.Font = Enum.Font.Ubuntu
versionLabel.TextSize = 16
versionLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
versionLabel.TextXAlignment = Enum.TextXAlignment.Left

--------------------------------------------------------------------------------------------------------------------

local function GetEasterDate(year)
	local A = math.floor(year/100)
	local B = math.floor((13+8*A)/25)
	local C = (15-B+A-math.floor(A/4))%30
	local D = (4+A-math.floor(A/4))%7
	local E = (19*(year%19)+C)%30
	local F = (2*(year%4)+4*(year%7)+6*E+D)%7
	local G = 22 + E + F

	if E == 29 and F == 6 then
		return 4, 19
	elseif E == 28 and F == 6 then
		return 4, 18
	elseif G > 31 then
		return 4, G-31
	else
		return 3, G
	end
end

local isXmas, isNewYear, isEaster, isHalloween, isValentine = false, false, false, false, false

local success, err = pcall(function()
	local date = os.date("*t")
	local emonth, eday = GetEasterDate(date.year)
	isXmas = date.month == 12 and date.day >= 15 and date.day <= 29
	isHalloween = (date.month == 10 and date.day >= 23) or (date.month == 11 and date.day <= 1)
	isNewYear = (date.month == 12 and date.day >= 30) or (date.month == 1 and date.day <= 2)
	isValentineDay = (date.month == 2 and date.day == 14)
	isEaster = (date.month == emonth and date.day == eday)
end)

if not success then
	warn("Date system error for writing Server Finder Deluxe:", err)
end

local function decorateTitle(startEmoji, endEmoji)
	title.Text = startEmoji .. " Server Finder Deluxe " .. endEmoji
	title.TextScaled = false
	title.TextSize = 25
	title.Position = UDim2.new(0, 0, 0, 2)
end


if isXmas then
	decorateTitle("🎄", "🎄")
	local cycleColors = {
		Color3.fromRGB(0, 255, 0),
		Color3.fromRGB(255, 0, 0),
		Color3.fromRGB(255, 255, 255)
	}
	local index = 1
	task.spawn(function()
		while true do
			title.TextColor3 = cycleColors[index]
			versionLabel.TextColor3 = cycleColors[index]
			index = index % #cycleColors + 1
			task.wait(0.5)
		end
	end)
end

-- Effet Halloween
if isHalloween then
	decorateTitle("🎃", "🎃")
	local cycleColors = {
		Color3.fromRGB(0, 0, 0),
		Color3.fromRGB(255, 165, 0)
	}
	local index = 1
	task.spawn(function()
		while true do
			title.TextColor3 = cycleColors[index]
			versionLabel.TextColor3 = cycleColors[index]
			index = index % #cycleColors + 1
			task.wait(0.5)
		end
	end)
end


if isNewYear then
	decorateTitle("🎉", "🎉")
	local cycleColors = {
		Color3.fromRGB(255, 255, 0),
		Color3.fromRGB(0, 0, 0)
	}
	local index = 1
	task.spawn(function()
		while true do
			title.TextColor3 = cycleColors[index]
			versionLabel.TextColor3 = cycleColors[index]
			index = index % #cycleColors + 1
			task.wait(0.5)
		end
	end)
end


if isEaster then
	decorateTitle("🐰", "🐰")
	local cycleColors = {
		Color3.fromRGB(216, 191, 216),
		Color3.fromRGB(255, 182, 193),
		Color3.fromRGB(193, 225, 193),
		Color3.fromRGB(173, 216, 230)
	}
	local index = 1
	task.spawn(function()
		while true do
			title.TextColor3 = cycleColors[index]
			versionLabel.TextColor3 = cycleColors[index]
			index = index % #cycleColors + 1
			task.wait(0.5)
		end
	end)
end


if isValentineDay then
	decorateTitle("💗", "💗")
	local cycleColors = { 
		Color3.fromRGB(0, 0, 0),
		Color3.fromRGB( 255, 85, 127)
	}
	local index = 1
	task.spawn(function()
		while true do
			title.TextColor3 = cycleColors[index]
			versionLabel.TextColor3 = cycleColors[index]
			index = index % #cycleColors + 1
			task.wait(0.5)
		end
	end)
end



if not isXmas and not isHalloween and not isNewYear and not isEaster and not isValentineDay then
	title.Text = "Server Finder Deluxe"
	title.Position = UDim2.new(0, 0, 0, 0)
end

--------------------------------------------------------------------------------------------------------------------



local scrollFrame = Instance.new("ScrollingFrame", mainFrame)
scrollFrame.Size = UDim2.new(1, -20, 1, -60)
scrollFrame.Position = UDim2.new(0, 10, 0, 50)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollFrame.ScrollBarThickness = 6
scrollFrame.BackgroundTransparency = 1
scrollFrame.ClipsDescendants = true

local layout = Instance.new("UIListLayout", scrollFrame)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 10)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local isScrolling = false

scrollFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseWheel or input.UserInputType == Enum.UserInputType.Touch then
		isScrolling = true
		mainFrame.Active = false
	end
end)

scrollFrame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseWheel or input.UserInputType == Enum.UserInputType.Touch then
		task.delay(0.1, function()
			isScrolling = false
			mainFrame.Active = true
		end)
	end
end)

--------------------------------------------------------------------------------------------------------------------

local posChange = 8
local serverFrames = {}

-- Le code qui scann tout les servers publics

local function GetAllServers(PlaceID)
	getgenv().NextServer = nil
	getgenv().HasScannedAll = false
	local T = {}
	xpcall(function()
		local Site = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Desc&limit=100'))
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" then
			getgenv().NextServer = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Desc&limit=100&cursor=' .. Site.nextPageCursor))
			table.insert(T, (getgenv().NextServer).data)
			while not getgenv().HasScannedAll do
				task.wait()
				if (getgenv().NextServer).nextPageCursor and (getgenv().NextServer).nextPageCursor ~= "null" then
					getgenv().NextServer = HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Desc&limit=100&cursor=' .. (getgenv().NextServer).nextPageCursor))
					table.insert(T, (getgenv().NextServer).data)
				else
					getgenv().HasScannedAll = true
				end
			end
		else
			table.insert(T, Site.data)
		end
	end,function()

	end)
	return T
end
--------------------------------------------------------------------------------------------------------------------

-- Frame avec les Pings des connections des servers public et le nombre de players dans les servers publics

local function CreateServerFrame(server)
	local serverFrame = Instance.new("Frame", scrollFrame)
	serverFrame.Size = UDim2.new(1, 0, 0, 120)
	serverFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	serverFrame.BorderSizePixel = 0

	-- TextLabel pour le nombre de joueurs, ping et FPS
	local infoLabel = Instance.new("TextLabel", serverFrame)
	infoLabel.Size = UDim2.new(0, 300, 0, 60)
	infoLabel.Position = UDim2.new(0, 10, 0, 10)
	infoLabel.BackgroundTransparency = 1
	infoLabel.TextWrapped = true
	infoLabel.TextXAlignment = Enum.TextXAlignment.Left
	infoLabel.TextYAlignment = Enum.TextYAlignment.Top
	infoLabel.Font = Enum.Font.Ubuntu
	infoLabel.TextSize = 16
	infoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	infoLabel.ZIndex = 3
	
	local ping = server.ping or 0
	local players = server.playing or 0
	local maxPlayers = server.maxPlayers or 0
	local fps = ping > 0 and math.floor(1000 / ping) or 0

	-- Estimation qualité serveur
	local quality, qualityColor
	pcall(function()
		quality = "Good"
		qualityColor = Color3.fromRGB(0, 255, 0)

		if ping > 250 or players >= maxPlayers then
			quality = "Bad"
			qualityColor = Color3.fromRGB(255, 60, 60)
		elseif ping > 150 then
			quality = "Medium"
			qualityColor = Color3.fromRGB(255, 170, 0)
		end
	end)


	infoLabel.Text =
		"Ping : " .. (ping > 0 and ping or "N/A") ..
		"\nFPS : " .. fps ..
		"\nPlayers : " .. players .. "/" .. maxPlayers ..
		"\nServer Quality : " .. quality

	infoLabel.TextColor3 = qualityColor

	-- ID du jeu
	local placeIdLabel = Instance.new("TextLabel", serverFrame)
	placeIdLabel.Size = UDim2.new(0, 300, 0, 20)
	placeIdLabel.Position = UDim2.new(0, 10, 0, 76)
	placeIdLabel.BackgroundTransparency = 1
	placeIdLabel.TextWrapped = true
	placeIdLabel.TextXAlignment = Enum.TextXAlignment.Left
	placeIdLabel.TextYAlignment = Enum.TextYAlignment.Top
	placeIdLabel.Font = Enum.Font.Ubuntu
	placeIdLabel.TextSize = 14
	placeIdLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
	placeIdLabel.Text = "Game ID : " .. tostring(game.PlaceId)
	placeIdLabel.ZIndex = 4

	-- ID du serveur public
	local idLabel = Instance.new("TextLabel", serverFrame)
	idLabel.Size = UDim2.new(0, 300, 0, 20)
	idLabel.Position = UDim2.new(0, 10, 0, 94)
	idLabel.BackgroundTransparency = 1
	idLabel.TextWrapped = true
	idLabel.TextXAlignment = Enum.TextXAlignment.Left
	idLabel.TextYAlignment = Enum.TextYAlignment.Top
	idLabel.Font = Enum.Font.Ubuntu
	idLabel.TextSize = 14
	idLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
	idLabel.Text = "ID : " .. server.id
	idLabel.ZIndex = 4

	-- Bouton Join
	local joinButton = Instance.new("TextButton", serverFrame)
	joinButton.Size = UDim2.new(0, 100, 0, 40)
	joinButton.Position = UDim2.new(1, -110, 0.5, -20)
	joinButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	joinButton.Text = "Join"
	joinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	joinButton.Font = Enum.Font.Ubuntu
	joinButton.TextSize = 18
	joinButton.ZIndex = 4

	local clickSound = Instance.new("Sound", joinButton)
	clickSound.SoundId = "rbxassetid://9120093264"
	clickSound.Volume = 1
	clickSound.PlayOnRemove = false

	joinButton.MouseButton1Click:Connect(function()
		local soundOk, soundErr = pcall(function()
			clickSound:Play()
		end)
		if not soundOk then
			warn("Failed to play click sound Join:", soundErr)
		end

		local ok, err = pcall(function()
			TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, LocalPlayer)
		end)
		if not ok then
			warn("An error occurred on the join button. Please try again.", err)
		end
	end)

	local copyJoinButton = Instance.new("TextButton", serverFrame)
	copyJoinButton.Size = UDim2.new(0, 100, 0, 30)
	copyJoinButton.Position = UDim2.new(1, -110, 0.5, 25)
	copyJoinButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	copyJoinButton.Text = "Copy Join"
	copyJoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	copyJoinButton.Font = Enum.Font.Ubuntu
	copyJoinButton.TextSize = 16
	copyJoinButton.ZIndex = 4

	local clickSoundCopy = Instance.new("Sound", copyJoinButton)
	clickSoundCopy.SoundId = "rbxassetid://9120093264"
	clickSoundCopy.Volume = 1
	clickSoundCopy.PlayOnRemove = false

	copyJoinButton.MouseButton1Click:Connect(function()
		local soundOk, soundErr = pcall(function()
			clickSoundCopy:Play()
		end)
		if not soundOk then
			warn("Failed to play click sound CopyJoin:", soundErr)
		end

		local ok, err = pcall(function()
			local joinCommand = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. server.id .. '")'
			setclipboard(joinCommand)
		end)
		if not ok then
			warn("An error occurred on the copy join button. Please try again.", err)
		end
	end)

	table.insert(serverFrames, serverFrame)
end

--------------------------------------------------------------------------------------------------------------------

-- Global Servers
local allServers = {}
local fpsCheckInterval = 1
local minFPS = 21
local maxPing = 350 -- au-dessus de ça on passe en mode fluide
local smoothMode = false

-- FPS Calculateurs
local RunService = game:GetService("RunService")
local lastTime = tick()
local frames = 0

RunService.RenderStepped:Connect(function()
	frames += 1
	if tick() - lastTime >= fpsCheckInterval then
		local fps = frames / (tick() - lastTime)
		smoothMode = fps < minFPS -- si FPS trop bas, mode fluide
		frames = 0
		lastTime = tick()
	end
end)

-- Vérifie si un serveur a un ping trop élevé
local function hasHighPing(servers)
	if typeof(servers) ~= "table" then return false end
	for _, server in ipairs(servers) do
		if (server.ping or 0) > maxPing then
			return true
		end
	end
	return false
end

function updateServerList(servers)
	-- sécurité
	if typeof(servers) ~= "table" then return end

	for _, v in pairs(serverFrames) do
		v:Destroy()
	end
	posChange = 8
	table.clear(serverFrames)

	-- si FPS bas OU pings trop élevés
	if smoothMode or hasHighPing(servers) then
		task.spawn(function()
			for _, server in ipairs(servers) do
				CreateServerFrame(server)
				posChange += 154
				task.wait(0.05)
			end
		end)
	else
		for _, server in ipairs(servers) do
			CreateServerFrame(server)
			posChange += 154
		end
	end
end

function refreshServers()
	local servers = GetAllServers(game.PlaceId)

	-- sécurité : vérifie que servers est bien une table et contient quelque chose
	if typeof(servers) == "table" and #servers > 0 then
		allServers = servers[1] or {}
		updateServerList(allServers)
	else
		warn("No server found or API error.")
		showErrorTween()
	end
end



refreshServers()

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.RightControl then
		screenGui:Destroy()
	end
end)


--------------------------------------------------------------------------------------------------------------------



local TweenService = game:GetService("TweenService")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local langText = {
	["fr"] = "Erreur de chargement. Réessaie.",
	["en"] = "Error loading. Please try again.",
	["es"] = "Error al cargar. Inténtalo de nuevo.",
	["pt"] = "Erro ao carregar. Por favor, tente novamente.",
	["tr"] = "Yükleme hatası. Lütfen tekrar deneyin.",
	["it"] = "Errore nel caricamento. Riprova.",
	["de"] = "Fehler beim Laden. Bitte versuche es erneut.",
	["ar"] = "حدث خطأ أثناء التحميل. الرجاء المحاولة مرة أخرى.",
	["ja"] = "読み込みエラーが発生しました。もう一度お試しください。",
	["ru"] = "Ошибка загрузки. Пожалуйста, попробуйте еще раз.",
	["zh"] = "加载错误。请重试。"
}

local function getTranslatedMessage()
	local langCode = (LocalizationService.RobloxLocaleId or "en"):sub(1,2)
	return langText[langCode] or langText["en"]
end


local NotificationLib = {
	_notifications = {},
	_theme = {
		primaryColor = Color3.fromRGB(30, 30, 30),
		textColor = Color3.fromRGB(255, 255, 255),
		font = Enum.Font.GothamSemibold,
		cornerRadius = UDim.new(0, 8)
	},
	_settings = {
		duration = 4,
		spacing = 12,
		fadeTime = 0.28,
		slideDistance = 18
	},
	_icons = { info = "rbxassetid://9405926389" }
}

function NotificationLib:_init()
	if not self._container then
		self._container = Instance.new("ScreenGui")
		self._container.Name = "NotificationLibrary"
		self._container.ResetOnSpawn = false
		self._container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self._container.Parent = game:GetService("CoreGui")
	end
end

function NotificationLib:_calculatePosition(index)
	local spacing = self._settings.spacing
	local height = 90
	return UDim2.new(1, -24, 1, -24 - (index-1)*(height+spacing))
end

function NotificationLib:_animateOut(frame, callback)
	local tween = TweenService:Create(frame, TweenInfo.new(self._settings.fadeTime, Enum.EasingStyle.Quad), {
		Position = frame.Position + UDim2.new(0,0,0,self._settings.slideDistance),
		BackgroundTransparency = 1
	})
	tween:Play()
	tween.Completed:Connect(function()
		if frame and frame.Parent then frame:Destroy() end
		if callback then callback() end
	end)
end

function NotificationLib:Notify(opt)
	self:_init()
	opt = opt or {}
	local title = opt.Title or "Notification"
	local message = opt.Message or ""
	local duration = opt.Duration or self._settings.duration

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = self._theme.primaryColor
	frame.Size = UDim2.new(0, 340, 0, 90)
	frame.AnchorPoint = Vector2.new(1,1)
	frame.Position = self:_calculatePosition(#self._notifications + 1)
	frame.Parent = self._container
	Instance.new("UICorner", frame).CornerRadius = self._theme.cornerRadius

	local icon = Instance.new("ImageLabel", frame)
	icon.Image = self._icons.info
	icon.Size = UDim2.new(0,28,0,28)
	icon.Position = UDim2.new(0,12,0,12)
	icon.BackgroundTransparency = 1

	local titleLabel = Instance.new("TextLabel", frame)
	titleLabel.Font = self._theme.font
	titleLabel.TextColor3 = self._theme.textColor
	titleLabel.TextSize = 16
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Text = title
	titleLabel.BackgroundTransparency = 1
	titleLabel.Size = UDim2.new(1,-60,0,22)
	titleLabel.Position = UDim2.new(0,48,0,10)

	local msgLabel = Instance.new("TextLabel", frame)
	msgLabel.Font = Enum.Font.Gotham
	msgLabel.TextColor3 = self._theme.textColor
	msgLabel.TextSize = 14
	msgLabel.TextWrapped = true
	msgLabel.TextXAlignment = Enum.TextXAlignment.Left
	msgLabel.Text = message
	msgLabel.BackgroundTransparency = 1
	msgLabel.Size = UDim2.new(1,-60,0,48)
	msgLabel.Position = UDim2.new(0,48,0,30)

	table.insert(self._notifications, frame)

	task.delay(duration, function()
		if frame and frame.Parent then
			self:_animateOut(frame, function()
				for i,v in ipairs(self._notifications) do
					if v == frame then table.remove(self._notifications,i); break end
				end
			end)
		end
	end)
end


local function CreateRefreshButton(mainFrame)
	local refreshBtn = Instance.new("ImageButton")
	refreshBtn.Parent = mainFrame
	refreshBtn.AnchorPoint = Vector2.new(0.5,0.5)
	refreshBtn.Size = UDim2.new(0,47,0,47)
	refreshBtn.Position = UDim2.new(0.5,250,0.5,-220)
	refreshBtn.Image = "http://www.roblox.com/asset/?id=126446661859683"
	refreshBtn.BackgroundTransparency = 1
	refreshBtn.ZIndex = 7

	local clickSound = Instance.new("Sound", refreshBtn)
	clickSound.SoundId = "rbxassetid://9120093264"
	clickSound.Volume = 1
	clickSound.PlayOnRemove = false

	refreshBtn.MouseButton1Click:Connect(function()

		local soundOk, soundErr = pcall(function()
			clickSound:Play()
		end)
		if not soundOk then
			warn("Failed to play click sound refresh:", soundErr)
		end

		local success, err = pcall(refreshServers)
		if not success then
			NotificationLib:Notify({
				Title = "Error",
				Message = getTranslatedMessage(),
				Duration = 4
			})
		end
	end)

	return refreshBtn
end


local refreshBtn = CreateRefreshButton(mainFrame)

--------------------------------------------------------------------------------------------------------------------

-- Fonction pour trier les serveurs
local function sortServers(servers, currentSort)
	if typeof(servers) ~= "table" then return {} end

	if currentSort == "lowPlayers" then
		table.sort(servers, function(a, b)
			return (a.playing or 0) < (b.playing or 0)
		end)
	elseif currentSort == "maxPlayers" then
		table.sort(servers, function(a, b)
			return (a.playing or 0) > (b.playing or 0)
		end)
	elseif currentSort == "fastest" then
		table.sort(servers, function(a, b)
			return (a.ping or 9999) < (b.ping or 9999)
		end)
	end

	return servers
end


local lowPlayersBtn = Instance.new("ImageButton", mainFrame)
lowPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
lowPlayersBtn.Size = UDim2.new(0, 40, 0, 40)
lowPlayersBtn.Position = UDim2.new(0.5, -183, 0.5, -220)
lowPlayersBtn.Image = "http://www.roblox.com/asset/?id=78395837711238"
lowPlayersBtn.BackgroundTransparency = 1
lowPlayersBtn.ZIndex = 5

local maxPlayersBtn = Instance.new("ImageButton", mainFrame)
maxPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
maxPlayersBtn.Size = UDim2.new(0, 40, 0, 40)
maxPlayersBtn.Position = UDim2.new(0.5, -264, 0.5, -220)
maxPlayersBtn.Image = "http://www.roblox.com/asset/?id=117409611207958"
maxPlayersBtn.BackgroundTransparency = 1
maxPlayersBtn.ZIndex = 5


local clickSoundLow = Instance.new("Sound", lowPlayersBtn)
clickSoundLow.SoundId = "rbxassetid://9120093264"
clickSoundLow.Volume = 1
clickSoundLow.PlayOnRemove = false

local clickSoundMax = Instance.new("Sound", maxPlayersBtn)
clickSoundMax.SoundId = "rbxassetid://9120093264"
clickSoundMax.Volume = 1
clickSoundMax.PlayOnRemove = false


lowPlayersBtn.MouseButton1Click:Connect(function()
	local soundOk, soundErr = pcall(function()
		clickSoundLow:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound lowPlayers:", soundErr)
	end

	local ok, err = pcall(function()
		local sorted = sortServers(allServers, "lowPlayers")
		updateServerList(sorted)
	end)
	if not ok then
		warn("API error during lowPlayers. Please try again.", err)
	end
end)

maxPlayersBtn.MouseButton1Click:Connect(function()
	local soundOk, soundErr = pcall(function()
		clickSoundMax:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound maxPlayers:", soundErr)
	end

	local ok, err = pcall(function()
		local sorted = sortServers(allServers, "maxPlayers")
		updateServerList(sorted)
	end)
	if not ok then
		warn("API error during MaxPlayers. Please try again.", err)
	end
end)

--------------------------------------------------------------------------------------------------------------------



local TweenService = game:GetService("TweenService")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local langText = {
	["fr"] = "L'ID du serveur a été copié avec succès !",
	["en"] = "Server ID copied successfully!",
	["es"] = "¡ID del servidor copiado correctamente!",
	["de"] = "Server-ID erfolgreich kopiert!",
	["it"] = "ID del server copiato con successo!",
	["pt"] = "ID do servidor copiado com sucesso!",
	["ru"] = "ID сервера успешно скопирован!",
	["zh"] = "服务器ID复制成功！",
	["tr"] = "Sunucu kimliği başarıyla kopyalandı!",
	["ja"] = "サーバーIDが正常にコピーされました！",
	["ar"] = "تم نسخ معرف الخادم بنجاح!",
}

local function getTranslatedMessage()
	local langCode = (LocalizationService.RobloxLocaleId or "en"):sub(1,2)
	return langText[langCode] or langText["en"]
end


local NotificationLib = {
	_notifications = {},
	_theme = {
		primaryColor = Color3.fromRGB(30,30,30),
		textColor = Color3.fromRGB(255,255,255),
		font = Enum.Font.GothamSemibold,
		cornerRadius = UDim.new(0,8)
	},
	_settings = {
		duration = 4,
		spacing = 12,
		fadeTime = 0.28,
		slideDistance = 18
	},
	_icons = { info = "rbxassetid://9405926389" }
}

function NotificationLib:_init()
	if not self._container then
		self._container = Instance.new("ScreenGui")
		self._container.Name = "NotificationLibrary"
		self._container.ResetOnSpawn = false
		self._container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self._container.Parent = game:GetService("CoreGui")
	end
end

function NotificationLib:_calculatePosition(index)
	local spacing = self._settings.spacing
	local height = 90
	return UDim2.new(1,-24,1,-24-(index-1)*(height+spacing))
end

function NotificationLib:_animateOut(frame, callback)
	local tween = TweenService:Create(frame, TweenInfo.new(self._settings.fadeTime, Enum.EasingStyle.Quad), {
		Position = frame.Position + UDim2.new(0,0,0,self._settings.slideDistance),
		BackgroundTransparency = 1
	})
	tween:Play()
	tween.Completed:Connect(function()
		if frame and frame.Parent then frame:Destroy() end
		if callback then callback() end
	end)
end

function NotificationLib:Notify(opt)
	self:_init()
	opt = opt or {}
	local title = opt.Title or "Notification"
	local message = opt.Message or ""
	local duration = opt.Duration or self._settings.duration

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = self._theme.primaryColor
	frame.Size = UDim2.new(0,340,0,90)
	frame.AnchorPoint = Vector2.new(1,1)
	frame.Position = self:_calculatePosition(#self._notifications+1)
	frame.Parent = self._container
	Instance.new("UICorner", frame).CornerRadius = self._theme.cornerRadius

	local icon = Instance.new("ImageLabel", frame)
	icon.Image = self._icons.info
	icon.Size = UDim2.new(0,28,0,28)
	icon.Position = UDim2.new(0,12,0,12)
	icon.BackgroundTransparency = 1

	local titleLabel = Instance.new("TextLabel", frame)
	titleLabel.Font = self._theme.font
	titleLabel.TextColor3 = self._theme.textColor
	titleLabel.TextSize = 16
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Text = title
	titleLabel.BackgroundTransparency = 1
	titleLabel.Size = UDim2.new(1,-60,0,22)
	titleLabel.Position = UDim2.new(0,48,0,10)

	local msgLabel = Instance.new("TextLabel", frame)
	msgLabel.Font = Enum.Font.Gotham
	msgLabel.TextColor3 = self._theme.textColor
	msgLabel.TextSize = 14
	msgLabel.TextWrapped = true
	msgLabel.TextXAlignment = Enum.TextXAlignment.Left
	msgLabel.Text = message
	msgLabel.BackgroundTransparency = 1
	msgLabel.Size = UDim2.new(1,-60,0,48)
	msgLabel.Position = UDim2.new(0,48,0,30)

	table.insert(self._notifications, frame)

	task.delay(duration, function()
		if frame and frame.Parent then
			self:_animateOut(frame,function()
				for i,v in ipairs(self._notifications) do
					if v==frame then table.remove(self._notifications,i); break end
				end
			end)
		end
	end)
end


local CopyGamelive = Instance.new("ImageButton", mainFrame)
CopyGamelive.AnchorPoint = Vector2.new(0.5, 0.5)
CopyGamelive.Size = UDim2.new(0, 41, 0, 41)
CopyGamelive.Position = UDim2.new(0.5, -227, 0.5, -220)
CopyGamelive.Image = "http://www.roblox.com/asset/?id=122024633828045"
CopyGamelive.BackgroundTransparency = 1
CopyGamelive.ZIndex = 6

local clickSoundCopyLive = Instance.new("Sound", CopyGamelive)
clickSoundCopyLive.SoundId = "rbxassetid://9120093264"
clickSoundCopyLive.Volume = 1
clickSoundCopyLive.PlayOnRemove = false

CopyGamelive.MouseButton1Click:Connect(function()
	
	local soundOk, soundErr = pcall(function()
		clickSoundCopyLive:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound CopyGamelive:", soundErr)
	end

	local success, err = pcall(function()
		local currentServerId = game.JobId
		local joinCommand = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ',"' .. currentServerId .. '")'
		setclipboard(joinCommand)

		NotificationLib:Notify({
			Title = "Server ID",
			Message = getTranslatedMessage(),
			Duration = 4
		})
	end)
	if not success then
		warn("An error occurred on the copy server button. Please try again", err)
	end
end)


--------------------------------------------------------------------------------------------------------------------

-- Le button Close pour fermer le Gui Server Finder Deluxe

local closeBtn = Instance.new("ImageButton", mainFrame)
closeBtn.AnchorPoint = Vector2.new(0.5, 0.5)
closeBtn.Size = UDim2.new(0, 40, 0, 40)
closeBtn.Position = UDim2.new(0.5, 298, 0.5, -220)
closeBtn.Image = "http://www.roblox.com/asset/?id=138896199949173"
closeBtn.BackgroundTransparency = 1
closeBtn.ZIndex = 6

local clickSoundClose = Instance.new("Sound")
clickSoundClose.SoundId = "rbxassetid://9120093264"
clickSoundClose.Volume = 1
clickSoundClose.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") -- Mettre le son dans PlayerGui

closeBtn.MouseButton1Click:Connect(function()
	local soundOk, soundErr = pcall(function()
		clickSoundClose:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound closeBtn:", soundErr)
	end

	
	task.delay(0.1, function()
		pcall(function()
			_G.SFD_LOADED = false
			_G.SFD_CAN_RELOAD = true
			if screenGui then
				screenGui:Destroy()
			end
		end)
	end)
end)



--------------------------------------------------------------------------------------------------------------------



local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalizationService = game:GetService("LocalizationService")
local LocalPlayer = Players.LocalPlayer


local langText = {
	["fr"] = "Reconnexion au serveur...",
	["en"] = "Reconnecting to server...",
	["es"] = "Reconectando al servidor...",
	["de"] = "Wiederverbindung zum Server...",
	["it"] = "Riconnessione al server...",
	["pt"] = "Reconectando ao servidor...",
	["ru"] = "Переподключение к серверу...",
	["zh"] = "正在重新连接服务器...",
	["tr"] = "Sunucuya yeniden bağlanılıyor...",
	["ja"] = "サーバーに再接続中...",
	["ar"] = "إعادة الاتصال بالخادم...",
}

local function getTranslatedMessage()

	local tries = 0
	while (not LocalizationService.RobloxLocaleId or #LocalizationService.RobloxLocaleId < 2) and tries < 20 do
		tries = tries + 1
		task.wait(0.05)
	end
	local langCode = (LocalizationService.RobloxLocaleId or "en"):sub(1, 2)
	return langText[langCode] or langText["en"]
end


local startTime = os.clock()


local NotificationLib = {
	_notifications = {},
	_theme = {
		primaryColor = Color3.fromRGB(30, 30, 30),
		textColor = Color3.fromRGB(255, 255, 255),
		font = Enum.Font.GothamSemibold,
		cornerRadius = UDim.new(0, 8)
	},
	_settings = {
		duration = 4,
		position = "BottomRight",
		maxNotifications = 5,
		spacing = 12,
		fadeTime = 0.28,
		slideDistance = 18
	},
	_icons = {
		info = "rbxassetid://9405926389"
	}
}

function NotificationLib:_init()
	if not self._container then
		self._container = Instance.new("ScreenGui")
		self._container.Name = "NotificationLibrary"
		self._container.ResetOnSpawn = false
		self._container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self._container.Parent = game:GetService("CoreGui")
	end
end

function NotificationLib:_calculatePosition(index)
	local spacing = self._settings.spacing
	local height = 90
	return UDim2.new(1, -24, 1, -24 - (index - 1) * (height + spacing))
end

function NotificationLib:_animateOut(frame, callback)
	local tween = TweenService:Create(frame, TweenInfo.new(self._settings.fadeTime, Enum.EasingStyle.Quad), {
		Position = frame.Position + UDim2.new(0, 0, 0, self._settings.slideDistance),
		BackgroundTransparency = 1
	})
	tween:Play()
	tween.Completed:Connect(function()
		if frame and frame.Parent then frame:Destroy() end
		if callback then callback() end
	end)
end

function NotificationLib:Notify(opt)
	self:_init()
	opt = opt or {}
	local title = opt.Title or "Notification"
	local message = opt.Message or ""
	local duration = opt.Duration or self._settings.duration

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = self._theme.primaryColor
	frame.Size = UDim2.new(0, 340, 0, 90)
	frame.AnchorPoint = Vector2.new(1, 1)
	frame.Position = self:_calculatePosition(#self._notifications + 1)
	frame.Parent = self._container
	Instance.new("UICorner", frame).CornerRadius = self._theme.cornerRadius

	local icon = Instance.new("ImageLabel", frame)
	icon.Image = self._icons.info
	icon.Size = UDim2.new(0, 28, 0, 28)
	icon.Position = UDim2.new(0, 12, 0, 12)
	icon.BackgroundTransparency = 1

	local titleLabel = Instance.new("TextLabel", frame)
	titleLabel.Font = self._theme.font
	titleLabel.TextColor3 = self._theme.textColor
	titleLabel.TextSize = 16
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Text = title
	titleLabel.BackgroundTransparency = 1
	titleLabel.Size = UDim2.new(1, -60, 0, 22)
	titleLabel.Position = UDim2.new(0, 48, 0, 10)

	local msgLabel = Instance.new("TextLabel", frame)
	msgLabel.Font = Enum.Font.Gotham
	msgLabel.TextColor3 = self._theme.textColor
	msgLabel.TextSize = 14
	msgLabel.TextWrapped = true
	msgLabel.TextXAlignment = Enum.TextXAlignment.Left
	msgLabel.Text = message
	msgLabel.BackgroundTransparency = 1
	msgLabel.Size = UDim2.new(1, -60, 0, 48)
	msgLabel.Position = UDim2.new(0, 48, 0, 30)

	table.insert(self._notifications, frame)

	task.delay(duration, function()
		if frame and frame.Parent then
			self:_animateOut(frame, function()
				for i, v in ipairs(self._notifications) do
					if v == frame then table.remove(self._notifications, i); break end
				end
			end)
		end
	end)
end

task.wait(0.1)

local SCRIPT_SOURCE_SERVER_FINDER_DELUXE = [=[
loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxproGlitcher/Server-Finder-Deluxe/refs/heads/main/Finder_Servers_Code.luau"))()
]=]

local RejoinButton = Instance.new("ImageButton")
RejoinButton.Parent = mainFrame
RejoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
RejoinButton.Size = UDim2.new(0, 40, 0, 40)
RejoinButton.Position = UDim2.new(0.5, 204, 0.5, -220)
RejoinButton.Image = "rbxassetid://103864549538113"
RejoinButton.BackgroundTransparency = 1
RejoinButton.ZIndex = 10


local clickSoundRejoin = Instance.new("Sound", RejoinButton)
clickSoundRejoin.SoundId = "rbxassetid://9120093264"
clickSoundRejoin.Volume = 1
clickSoundRejoin.PlayOnRemove = false

RejoinButton.MouseButton1Click:Connect(function()
	
	local soundOk, soundErr = pcall(function()
		clickSoundRejoin:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound RejoinButton:", soundErr)
	end

	
	local success, err = pcall(function()	
		NotificationLib:Notify({
			Title = string.format("Time used: %.3f s", os.clock() - startTime),
			Message = getTranslatedMessage(),
			Type = "info",
			Duration = 5
		})

		queue_on_teleport(SCRIPT_SOURCE_SERVER_FINDER_DELUXE)
		task.wait(1)

		TeleportService:Teleport(game.PlaceId, LocalPlayer)
	end)

	if not success then
		warn("An error occurred on the button rejoint button servers. Please try again", err)
	end
end)


--------------------------------------------------------------------------------------------------------------------



local resizeButton = Instance.new("ImageButton", mainFrame)
resizeButton.AnchorPoint = Vector2.new(0.5, 0.5)
resizeButton.Size = UDim2.new(0, 40, 0, 40)
resizeButton.Position = UDim2.new(0.5, 157, 0.5, -220)
resizeButton.Image = "http://www.roblox.com/asset/?id=92176830367195"
resizeButton.BackgroundTransparency = 1
resizeButton.ZIndex = 9

local isSmall = true -- Définir la taille initiale comme petite

local clickSoundResize = Instance.new("Sound", resizeButton)
clickSoundResize.SoundId = "rbxassetid://9120093264"
clickSoundResize.Volume = 1
clickSoundResize.PlayOnRemove = false


local function toggleGuiSize()
	
	local soundOk, soundErr = pcall(function()
		clickSoundResize:Play()
	end)
	if not soundOk then
		warn("Failed to play click sound resizeButton:", soundErr)
	end

	if isSmall then
		mainFrame.Size = UDim2.new(0, 650, 0, 500)
		scrollFrame.Size = UDim2.new(1, -20, 1, -60)
		scrollFrame.Position = UDim2.new(0, 10, 0, 50)

		if refreshBtn then
			refreshBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			refreshBtn.Size = UDim2.new(0, 47, 0, 47)
			refreshBtn.Position = UDim2.new(0.5, 250, 0.5, -220)
		end

		if closeBtn then
			closeBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			closeBtn.Size = UDim2.new(0, 40, 0, 40)
			closeBtn.Position = UDim2.new(0.5, 298, 0.5, -220)
		end

		if resizeButton then
			resizeButton.AnchorPoint = Vector2.new(0.5, 0.5)
			resizeButton.Size = UDim2.new(0, 40, 0, 40)
			resizeButton.Position = UDim2.new(0.5, 157, 0.5, -220)
		end

		if RejoinButton then
			RejoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
			RejoinButton.Size = UDim2.new(0, 40, 0, 40)
			RejoinButton.Position = UDim2.new(0.5, 204, 0.5, -220)
		end

		if lowPlayersBtn then
			lowPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			lowPlayersBtn.Size = UDim2.new(0, 40, 0, 40)
			lowPlayersBtn.Position = UDim2.new(0.5, -183, 0.5, -220)
		end

		if maxPlayersBtn then
			maxPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			maxPlayersBtn.Size = UDim2.new(0, 40, 0, 40)
			maxPlayersBtn.Position = UDim2.new(0.5, -264, 0.5, -220)
		end

		if CopyGamelive then
			CopyGamelive.AnchorPoint = Vector2.new(0.5, 0.5)
			CopyGamelive.Size = UDim2.new(0, 41, 0, 41)
			CopyGamelive.Position = UDim2.new(0.5, -227, 0.5, -220)
		end

	else  
		mainFrame.Size = UDim2.new(0, 549, 0, 390)
		scrollFrame.Size = UDim2.new(1, -10, 1, -40)
		scrollFrame.Position = UDim2.new(0, 5, 0, 40)

		if refreshBtn then
			refreshBtn.Position = UDim2.new(0.5, 225, 0.5, -175)
			refreshBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			refreshBtn.Size = UDim2.new(0, 30, 0, 30)
		end

		if closeBtn then
			closeBtn.Position = UDim2.new(0.5, 255, 0.5, -175)
			closeBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			closeBtn.Size = UDim2.new(0, 25, 0, 25)
		end

		if RejoinButton then
			RejoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
			RejoinButton.Size = UDim2.new(0, 25, 0, 25)
			RejoinButton.Position = UDim2.new(0.5, 195, 0.5, -175)
		end

		if maxPlayersBtn then
			maxPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			maxPlayersBtn.Size = UDim2.new(0, 25, 0, 25)
			maxPlayersBtn.Position = UDim2.new(0.5, -222, 0.5, -175)
		end


		if lowPlayersBtn then
			lowPlayersBtn.AnchorPoint = Vector2.new(0.5, 0.5)
			lowPlayersBtn.Size = UDim2.new(0, 25, 0, 25)
			lowPlayersBtn.Position = UDim2.new(0.5, -173, 0.5, -175)
		end

		if CopyGamelive then
			CopyGamelive.AnchorPoint = Vector2.new(0.5, 0.5)
			CopyGamelive.Size = UDim2.new(0, 25, 0, 25)
			CopyGamelive.Position = UDim2.new(0.5, -199, 0.5, -175)
		end

		if resizeButton then
			resizeButton.AnchorPoint = Vector2.new(0.5, 0.5)
			resizeButton.Size = UDim2.new(0, 25, 0, 25)
			resizeButton.Position = UDim2.new(0.5, 167, 0.5, -175)
		end
	end
	isSmall = not isSmall
end

resizeButton.MouseButton1Click:Connect(toggleGuiSize)

--------------------------------------------------------------------------------------------------------------------

-- Services MODE PERFORMANCE BOOST 

-- Services
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")

-- Sauvegarde des réglages d'origine
local UserSettings = settings():GetService("RenderSettings")
local originalSettings = {
	QualityLevel = UserSettings.QualityLevel,
	EditQualityLevel = UserSettings.EditQualityLevel,
	GlobalShadows = Lighting.GlobalShadows
}

-- Active le mode performance boost
local function EnablePerformanceBoost()
	UserSettings.QualityLevel = Enum.QualityLevel.Level01
	UserSettings.EditQualityLevel = Enum.QualityLevel.Level01

	-- Désactive tous les effets visuels post-traitement
	for _, effect in pairs(Lighting:GetChildren()) do
		if effect:IsA("PostEffect") then
			effect.Enabled = false
		end
	end

	-- Désactive les ombres globales
	Lighting.GlobalShadows = false
end

-- Restaure les réglages normaux
local function DisablePerformanceBoost()
	UserSettings.QualityLevel = originalSettings.QualityLevel
	UserSettings.EditQualityLevel = originalSettings.EditQualityLevel

	for _, effect in pairs(Lighting:GetChildren()) do
		if effect:IsA("PostEffect") then
			effect.Enabled = true
		end
	end

	Lighting.GlobalShadows = originalSettings.GlobalShadows
end

-- Exemple : activer au lancement
EnablePerformanceBoost()

-- Exemple : désactiver quand tu fermes le GUI
closeBtn.MouseButton1Click:Connect(function()
	DisablePerformanceBoost()
	screenGui.Enabled = false
end)


--------------------------------------------------------------------------------------------------------------------

-- Notification pour me contacter au cas problème pour le Script Server Finder Deluxe
-- Impression de texte personnalisé pour la console roblox
-- Impression de Texte Traduits pour pluiseurs langues

pcall(function()
local Modules = {
	Colors = {
		["Grey"] = "254, 254, 254",
		["Cyan"] = "33, 161, 163"
	}
}

Modules.ChangeColor = function() 
	game:GetService("RunService").Heartbeat:Connect(function()
		local console = game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster")
		if console then
			for _, v in pairs(console:GetDescendants()) do
				if v:IsA("TextLabel") then 
					v.RichText = true 
				end 
			end
		end
	end)
end

Modules.print = function(color, text, size)
	if not Modules.Colors[color] then 
		warn("Color was not found!")
		return 
	end 

	local Text = '<font color="rgb(' .. Modules.Colors[color] .. ')"'
	if size then
		Text = Text .. ' size="' .. tostring(size) .. '"'
	end
	Text = Text .. '>' .. tostring(text) .. '</font>'
	print(Text)
end

local version = "6.3"

local translations = {
	["fr"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe lancé !!!",
		contact = "Si vous avez un problème avec le script, contactez maxproglitcher sur Discord.",
	},
	["en"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe is executed !!!",
		contact = "If you have a problem with the script, contact maxproglitcher on Discord.",
	},
	["es"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "¡Script Server Finder Deluxe ejecutado!",
		contact = "Si tienes un problema con el script, contacta a maxproglitcher en Discord.",
	},
	["de"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe wurde ausgeführt!",
		contact = "Bei Problemen mit dem Skript kontaktiere maxproglitcher auf Discord.",
	},
	["it"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe eseguito!",
		contact = "Se hai problemi con lo script, contatta maxproglitcher su Discord.",
	},
	["pt"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe executado!",
		contact = "Se você tiver problemas com o script, contate maxproglitcher no Discord.",
	},
	["ru"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Скрипт Server Finder Deluxe запущен!",
		contact = "Если у вас есть проблемы со скриптом, свяжитесь с maxproglitcher в Discord.",
	},
	["zh"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "脚本 Server Finder Deluxe 已执行！",
		contact = "如果您遇到脚本问题，请在 Discord 上联系 maxproglitcher。",
	},
	["tr"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "Script Server Finder Deluxe çalıştırıldı!",
		contact = "Script ile ilgili bir sorun yaşarsanız, Discord üzerinden maxproglitcher ile iletişime geçin.",
	},
	["ja"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "スクリプト Server Finder Deluxe を実行しました！",
		contact = "スクリプトに問題がある場合は、Discord で maxproglitcher に連絡してください。",
	},
	["ar"] = {
		line = "-------------------------------------------------------------------------------------",
		executed = "تم تنفيذ سكربت Server Finder Deluxe!",
		contact = "إذا واجهت مشكلة في السكربت، تواصل مع maxproglitcher على ديسكورد.",
	}
}

-- Utilisation correcte de RobloxLocaleId côté client
local langCode = game:GetService("LocalizationService").RobloxLocaleId:lower():match("^([a-z][a-z])") or "en"
local msg = translations[langCode] or translations["en"]

Modules.ChangeColor()
Modules.print("Grey", msg.line, 20)
Modules.print("Grey", msg.executed, 20)
Modules.print("Grey", "Version "..version, 20)
Modules.print("Grey", msg.line, 20)
Modules.print("Grey", msg.contact, 20)
Modules.print("Grey", msg.line, 20)
end)
--------------------------------------------------------------------------------------------------------------------
