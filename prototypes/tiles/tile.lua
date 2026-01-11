local sounds = require("__base__.prototypes.entity.sounds")
local tile_sounds = require("__base__.prototypes.tile.tile-sounds")
local tile_trigger_effects = require("__base__.prototypes.tile.tile-trigger-effects")
local tile_pollution = require("__base__.prototypes.tile.tile-pollution-values")
local tile_collision_masks = require("__base__.prototypes.tile.tile-collision-masks")

local tile_graphics = require("__base__.prototypes.tile.tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local grass_vehicle_speed_modifier = 1.6

if settings.startup["early-agriculture-artificial-grass"].value then

	local artificial_grass_to_out_of_map_transition =
	{
		to_tiles = out_of_map_tile_type_names,
		transition_group = out_of_map_transition_group_id,

		background_layer_offset = 1,
		background_layer_group = "zero",
		offset_background_layer_by_tile_layer = true,

		spritesheet = "__early-agriculture__/graphics/terrain/out-of-map-transition/artificial-grass-out-of-map-transition.png",
		layout = tile_spritesheet_layout.transition_4_4_8_1_1,
	}

	-- Based on from concrete_transitions
	local artificial_grass_transitions = {
		{
			to_tiles = water_tile_type_names,
			transition_group = water_transition_group_id,

			spritesheet = "__early-agriculture__/graphics/terrain/water-transitions/artificial-grass.png",
			layout = tile_spritesheet_layout.transition_8_8_8_4_4,
			background_enabled = false,
			effect_map_layout = {
				spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-mask.png",
				inner_corner_count = 1,
				outer_corner_count = 1,
				side_count = 1,
				u_transition_count = 1,
				o_transition_count = 1
			}
		},
		artificial_grass_to_out_of_map_transition
	}

	local artificial_grass_transitions_between_transitions = {
		{
			transition_group1 = default_transition_group_id,
			transition_group2 = water_transition_group_id,

			spritesheet = "__early-agriculture__/graphics/terrain/water-transitions/artificial-grass-transitions.png",
			layout = tile_spritesheet_layout.transition_3_3_3_1_0,
			background_enabled = false,
			effect_map_layout =
			{
			spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-land-mask.png",
			o_transition_count = 0
			}
		},
		{
			transition_group1 = default_transition_group_id,
			transition_group2 = out_of_map_transition_group_id,

			background_layer_offset = 1,
			background_layer_group = "zero",
			offset_background_layer_by_tile_layer = true,

			spritesheet = "__early-agriculture__/graphics/terrain/out-of-map-transition/artificial-grass-out-of-map-transition-b.png",
			layout = tile_spritesheet_layout.transition_3_3_3_1_0,
		},
		{
			transition_group1 = water_transition_group_id,
			transition_group2 = out_of_map_transition_group_id,

			background_layer_offset = 1,
			background_layer_group = "zero",
			offset_background_layer_by_tile_layer = true,

			spritesheet = "__early-agriculture__/graphics/terrain/out-of-map-transition/artificial-grass-shore-out-of-map-transition.png",
			layout = tile_spritesheet_layout.transition_3_3_3_1_0,
			effect_map_layout = {
				spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-out-of-map-mask.png",
				u_transition_count = 0,
				o_transition_count = 0
			}
		}
	}

	data:extend({
		{
			type = "tile",
			name = "artificial-grass",
			order = "a[artificial]-d[utility]-b[artificial-grass]",
			subgroup = "artificial-tiles",
			needs_correction = false,
			minable = {mining_time = 0.5, result = "artificial-grass"},
			mined_sound = sounds.deconstruct_bricks(0.8),
			-- is_foundation = true,
			collision_mask = tile_collision_masks.ground(),
			layer = 12,
			layer_group = "ground-artificial",

			transitions = artificial_grass_transitions,
			transitions_between_transitions = artificial_grass_transitions_between_transitions,

			variants = {
				transition = {
					overlay_layout = {
						inner_corner = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-inner-corner.png",
							count = 16,
							scale = 0.5
						},
						outer_corner = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-outer-corner.png",
							count = 8,
							scale = 0.5
						},
						side = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-side.png",
							count = 16,
							scale = 0.5
						},
						u_transition = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-u.png",
							count = 8,
							scale = 0.5
						},
						o_transition = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-o.png",
							count = 4,
							scale = 0.5
						}
					},
					mask_layout = {
						inner_corner = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-inner-corner-mask.png",
							count = 16,
							scale = 0.5
						},
						outer_corner = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-outer-corner-mask.png",
							count = 8,
							scale = 0.5
						},
						side = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-side-mask.png",
							count = 16,
							scale = 0.5
						},
						u_transition = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-u-mask.png",
							count = 8,
							scale = 0.5
						},
						o_transition = {
							spritesheet = "__early-agriculture__/graphics/terrain/artificial-grass-o-mask.png",
							count = 4,
							scale = 0.5
						}
					}
				},

				material_background = {
					picture = "__early-agriculture__/graphics/terrain/artificial-grass.png",
					count = 8,
					scale = 0.5
				}
			},

			walking_sound = tile_sounds.walking.grass,
			driving_sound = tile_sounds.driving.grass,
			build_sound = tile_sounds.building.landfill,
			map_color={55, 65, 11},
    		scorch_mark_color = {r = 0.318, g = 0.222, b = 0.152, a = 1.000},
			absorptions_per_second = tile_pollution.grass,
    		vehicle_friction_modifier = grass_vehicle_speed_modifier,
			trigger_effect = tile_trigger_effects.grass_1_trigger_effect()
		},
	})
end
