local ftech = require("__fdsl__.lib.technology")

if settings.startup["early-agriculture-artificial-grass"].value then
	ftech.add_prereq("landfill", "basic-agriculture")
	ftech.add_unlock("landfill", "artificial-grass")
end
