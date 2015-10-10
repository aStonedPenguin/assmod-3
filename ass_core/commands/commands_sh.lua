local COMMAND 		= {}
COMMAND.__index 	= COMMAND

function ass.cmd.Create(name, callback)
	local c = {
		Name  		= ass.FormatName(name),
		NiceName 	= name,
		Args		= {},
		Weight	 	= 0,
		Icon 		= 'icon16/group.png',
		Callback	= callback or function() end
	}
	setmetatable(c, COMMAND)
	ass.cmd.Stored[c.Name] = c
	return c
end

function ass.cmd.Get(name)
	return ass.cmd.Stored[formatname(name)]
end

function ass.cmd.Remove(name)
	ass.cmd.Get(name):Remove()
end

function ass.cmd.GetTable()
	return ass.cmd.Stored
end

function COMMAND:SetWeight(weight)
	self.Weight = weight
	return self
end

function COMMAND:SetIcon(icon)
	self.Icon = icon
	return self
end

function COMMAND:Remove()
	ass.cmd.Stored[self.Name] = nil
end