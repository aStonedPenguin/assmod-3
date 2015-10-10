local PLUGIN 		= {}
PLUGIN.__index 		= PLUGIN

function ass.plug.Create(name)
	local p = {
		Name  		= ass.FormatName(name),
		NiceName 	= name,
		Hooks 		= {},
		Commands 	= {}
	}
	setmetatable(p, PLUGIN)
	ass.plug.Stored[p.Name] = p
	return p
end

function PLUGIN:SetAuthor(author)
	self.Author = author
	return self
end

function PLUGIN:SetVersion(version)
	self.Version = version
	return self
end

function PLUGIN:SetGamemode()

end

function PLUGIN:SetCustomCheck(callback)
	self.CustomCheck = callback
end

function PLUGIN:AddCommand(command, callback)

end

function PLUGIN:AddHook(name, callback)

end

function PLUGIN:GetName()
	return self.Name
end

function PLUGIN:GetAuthor()
	return self.Author
end

function PLUGIN:GetCommands()

end

function PLUGIN:GetHooks()

end

function PLUGIN:_Load()
	if self.Load then
		self:Load()
	end

end

function PLUGIN:_UnLoad()
	if self.UnLoad then
		self:UnLoad()
	end

end