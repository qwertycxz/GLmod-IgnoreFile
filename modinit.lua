#!/usr/bin/env lua
--- @alias Mod { installPath: string } Mod table
--- @alias submitItem fun(self: Steam, item: Mod, ...: any): nil
return {
	alias = 'IgnoreFile',
	description = 'The mod uploading will follow a .workshopignore file.',
	--- Hook item submitting to filter out files
	--- @param mod Mod IgnoreFile mod table
	OnLoad = function(mod)
		--- @class Steam
		--- @field SubmitItem submitItem
		local steam = rawget(_G, 'engine').steam
		local submitItem = steam.SubmitItem
		--- @type submitItem
		getmetatable(steam).__index.SubmitItem = function(self, item, ...)
			local open = rawget(_G, 'io').open
			local file = open(mod.installPath .. '/.workshopignore')
			if file then
				file:close()
				local tmp = os.tmpname()
				file = open(tmp)
				if file then
					file:close()
					os.remove(tmp)
					os.execute(mod.installPath .. '/src/filterIgnore.sh ' .. item.installPath .. ' ' .. tmp)
				else
					os.execute('powershell -File ' .. mod.installPath .. '/src/filterIgnore.ps1 ' .. item.installPath .. ' ' .. tmp)
				end
				item = table.extend(item){
					installPath = tmp,
				}
			end
			submitItem(self, item, ...)
		end
	end,
	previewImagePath = 'preview.png',
	title = 'Ignore File',
	version = '0.0.1',
}
