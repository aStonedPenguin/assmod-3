local PLAYER = FindMetaTable('Player')

function PLAYER:GetUserGroup()

end

function PLAYER:IsUserGroup()

end

function PLAYER:IsAdmin()

end

function PLAYER:IsSuperAdmin()

end

function PLAYER:GetUserGroupTable()

end

function PLAYER:GetUserGroupImmunity()

end

function PLAYER:GetUserGroupID()

end


nw.Register 'UserGroup'
	:Read(function()
		return net.ReadUInt(6)
	end)
	:Write(function(v)
		net.WriteUInt(v, 6)
	end)