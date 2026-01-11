if settings.startup["early-agriculture-the-basics"].value then
	data:extend({
		{
			type = "technology",
			name = "basic-agriculture",
			icon = "__early-agriculture__/graphics/technology/basic-agriculture.png",
			icon_size = 256,
			effects = {
				{type="unlock-recipe", recipe="agricultural-camp"},
				{type="unlock-recipe", recipe="wood-processing"}
			},
			prerequisites = mods["aai-industry"] and {"electricity", "glass-processing"} or {"automation-science-pack"},
			unit = {
				count = 10,
				ingredients = {{"automation-science-pack", 1}},
				time = 10
			},
			ignore_tech_cost_multiplier = true
		}
	})
end
