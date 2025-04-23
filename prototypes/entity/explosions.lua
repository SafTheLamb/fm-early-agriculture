local explosion_animations = require("__space-age__.prototypes.entity.explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "explosion",
    name = "agricultural-camp-explosion",
    icon = "__early-agriculture__/graphics/icons/agricultural-camp.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "agriculture-explosions",
    order = "a[agricultural-camp]",
    height = 0,
    animations = explosion_animations.medium_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-particle",
            repeat_count = 5,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "assembling-machine-3-metal-particle-big",
            offsets = {
              {0.7734, -0.6484},
              {-0.7266, 0.5859}
            },
            offset_deviation = {
              left_top = {-0.6875, -0.6875},
              right_bottom = {0.6875, 0.6875}
            },
            tile_collision_mask = nil,
            initial_height = 0.8,
            initial_height_deviation = 0.49,
            initial_vertical_speed = 0.088,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 38,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-medium",
            offsets = {{0, 0}},
            offset_deviation = {{-0.9805, -0.8867}, {0.9805, 0.8867}},
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 5,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "oil-refinery-metal-particle-medium",
            offsets = {{0.5234, 0.08594}},
            offset_deviation = {
              left_top = {-0.9805, -0.8828},
              right_bottom = {0.9805, 0.8828}
            },
            tile_collision_mask = nil,
            initial_height = 1.4,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 129,
            repeat_count_deviation = 52,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "lab-glass-particle-small",
            offsets = {{-0.5703, 0.4063}},
            offset_deviation = {
              left_top = { -0.5, -0.5938 },
              right_bottom = { 0.5, 0.5938 }
            },
            tile_collision_mask = nil,
            initial_height = 1.1,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.067,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 45,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "assembling-machine-3-metal-particle-medium",
            offsets = {{0.4219, 0.08594}},
            offset_deviation = {
              left_top = {-0.5, -0.2969},
              right_bottom = {0.5, 0.2969}
            },
            tile_collision_mask = nil,
            initial_height = 3,
            initial_height_deviation = 3,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.07,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.005,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 20,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "selector-combinator-metal-particle-small",
            offsets = {{0.3047, 0.1484}},
            offset_deviation = {
              left_top = {-0.5, -0.5},
              right_bottom = {0.5, 0.5}
            },
            tile_collision_mask = nil,
            initial_height = 2.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          }
        }
      }
    }
  }
})