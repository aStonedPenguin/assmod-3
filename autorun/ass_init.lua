ass = ass or {
	Version = '3.0',
	group = {
		Stored = {}
	},
	cmd = {
		Stored = {}
	},
	plug = {
		Stored = {}
	}
}

ass.IncludeSV 	= (SERVER) and include or function() end
ass.IncludeCL 	= (SERVER) and AddCSLuaFile or include
ass.IncludeSH	= function(f) ass.IncludeSV(f) ass.IncludeCL(f) end
ass.Print 		= function(...) MsgC(Color(255,0,0), '[ASS]') print(' ', ...) end 
ass.FormatName 	= function(n) return n:lower():gsub(' ', '') end

-- Libs
if (not nw) then
	ass.IncludeSH 'ass_lib/nw.lua'
end

-- Groups
ass.IncludeSH 'ass_core/groups/player_sh.lua'

-- Commands
ass.IncludeSH 'ass_core/commands/commands_sh.lua'
ass.IncludeSH 'ass_core/commands/parser_sh.lua'

-- Plugins
ass.IncludeSH 'ass_core/plugins/plugins_sh.lua'
ass.IncludeSH 'ass_core/plugins/loader_sh.lua'


local loadmsg = { -- Yes I used a ascii generator, no I don't care.
	[[   _   ___ ___ __  __  ___  ___  ]],
	[[  /_\ / __/ __|  \/  |/ _ \|   \ ]],
	[[ / _ \\__ \__ \ |\/| | (_) | |) |]],
	[[/_/ \_\___/___/_|  |_|\___/|___/ ]],
}
for k, v in ipairs(loadmsg) do
	MsgC(Color(255,255,255), v .. '\n')
end