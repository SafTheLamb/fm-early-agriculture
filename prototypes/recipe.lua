local lumber_item = mods["wood-logistics"] and settings.startup["wood-logistics-lumber"].value and "lumber" or "wood"
local glass_item = mods["crushing-industry"] and settings.startup["crushing-industry-glass"].value and "glass" or "stone-brick"

data:extend({
	{
		type = "recipe",
		name = "agricultural-camp",
		energy_required = 10,
		ingredients = mods["aai-industry"] and {
			{type="item", name="iron-plate", amount=16},
			{type="item", name=lumber_item, amount=5},
			{type="item", name="electric-motor", amount=2},
			{type="item", name="glass", amount=5}
		} or {
			{type="item", name="iron-plate", amount=20},
			{type="item", name=lumber_item, amount=5},
			{type="item", name="electronic-circuit", amount=2},
			{type="item", name=glass_item, amount=5}
		},
		results = {{type="item", name="agricultural-camp", amount=1}},
		enabled = false
	}
})

if settings.startup["early-agriculture-artificial-grass"].value then
	data:extend({
		{
			type = "recipe",
			name = "artificial-grass",
			category = "crafting",
			surface_conditions = {{property="pressure", min=1000, max=1000}},
			enabled = false,
			allow_productivity = true,
			energy_required = 2,
			ingredients = {
				{type="item", name="tree-seed", amount=2},
				{type="item", name="landfill", amount=5},
			},
			results = {{type="item", name="artificial-grass", amount=10}}
		}
	})
end