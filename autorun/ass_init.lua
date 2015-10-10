ass = ass or {
	Version = 3,
	cmd = {
		Stored = {}
	}
}

ass.IncludeSV 	= (SERVER) and include or function() end
ass.IncludeCL 	= (SERVER) and AddCSLuaFile or include
ass.IncludeSH	= function(f) ass.IncludeSV(f) ass.IncludeCL(f) end
ass.Print 		= function(...) MsgC(Color(255,0,0), '[ASS]') print(' ', ...) end 

-- Libs
if (not nw) then
	ass.IncludeSH 'ass_lib/nw.lua'
end

-- Core
ass.IncludeSH 'ass_core/groups/player_sh.lua'

ass.IncludeSH 'ass_core/commands/commands_sh.lua'


local loadmsg = { -- Yes I used a ascii generator, no I don't care.
	[[   _   ___ ___ __  __  ___  ___  ]],
	[[  /_\ / __/ __|  \/  |/ _ \|   \ ]],
	[[ / _ \\__ \__ \ |\/| | (_) | |) |]],
	[[/_/ \_\___/___/_|  |_|\___/|___/ ]],
}
for k, v in ipairs(loadmsg) do
	MsgC(Color(255,255,255), v .. '\n')
end