if not ModCore then
	log("[ERROR] Unable to find ModCore from BeardLib! Is BeardLib installed correctly?")
	return
end

YOURMODCore = YOURMODCore or class(ModCore)

function YOURMODCore:init()
	--Calling the base function for init from ModCore
	--self_tbl, config path, auto load modules, auto post init modules
	self.super.init(self, ModPath .. "config.xml", true, false)
end

if not _G.YOURMOD then
	local success, err = pcall(function() _G.YOURMOD = YOURMODCore:new() end)
	if not success then
		log("[ERROR] An error occured on the initialization of YOUR MOD. " .. tostring(err))
	end
end
