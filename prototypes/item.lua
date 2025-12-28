local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
	{
		type = "item",
		name = "agricultural-camp",
		icon = "__early-agriculture__/graphics/icons/agricultural-camp.png",
		subgroup = "agriculture",
		order = "a[agricultural-camp]",
		inventory_move_sound = item_sounds.mechanical_large_inventory_move,
		pick_sound = item_sounds.mechanical_large_inventory_pickup,
		drop_sound = item_sounds.mechanical_large_inventory_move,
		place_result = "agricultural-camp",
		stack_size = 20
	}
})

if settings.startup["early-agriculture-artificial-grass"].value then
	data:extend({
		{
			type = "item",
			name = "artificial-grass",
			icon = "__early-agriculture__/graphics/icons/artificial-grass.png",
			subgroup = "terrain",
			order = "c[landfill]-a[grass]",
			inventory_move_sound = item_sounds.landfill_inventory_move,
			pick_sound = item_sounds.landfill_inventory_pickup,
			drop_sound = item_sounds.landfill_inventory_move,
			stack_size = 100,
			place_as_tile = {
				result = "artificial-grass",
				condition_size = 1,
				condition = {layers={ground_tile=true}},
				invert = true,
				tile_condition = {
					-- Technically trees can already be planted anywhere except sand, but this lets players decorate their lawn
					"grass-1", "grass-2", "grass-3", "grass-4",
					"dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
					"sand-1", "sand-2", "sand-3",
					"red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
				},
			},
			random_tint_color = item_tints.organic_green
		}
	})
end

data:extend({
	{
		type = "item",
		name = "wcu-proxy-trex",
		icon = "__early-agriculture__/graphics/trex.png",
		hidden = true,
		stack_size = 1
	}
})
