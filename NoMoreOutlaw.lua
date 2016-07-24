
local _G = _G
local id, name, description, icon, background, role, primaryStat

local orig_GetSpecializationInfo = _G.GetSpecializationInfo
_G.GetSpecializationInfo = function(...)
	id, name, description, icon, background, role, primaryStat = orig_GetSpecializationInfo(...)

	if name == "Outlaw" then
		name = "Combat"
	end

	return id, name, description, icon, background, role, primaryStat
end
