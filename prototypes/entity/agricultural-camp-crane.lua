local default_dying_effect =
{
  particle_effects = {
    type = "create-particle",
    repeat_count = 20,
    particle_name = "accumulator-metal-particle-big",
    speed_from_center = 0.02,
    speed_from_center_deviation = 0.01,
    offset_deviation = {{-0.3945, -0.4961}, {0.3945, 0.4961}},
    initial_height = 0.0,
    initial_height_deviation = 0.2
  },
  particle_effect_linear_distance_step = 0.15,
  explosion = {
    name = "explosion",
    offset = {0.0, 1.0},
  },
  explosion_linear_distance_step = 0.4
}

local CAMP_CRANE_SCALE = 0.8

return {
  origin = {0.5 * CAMP_CRANE_SCALE, -0.55 * CAMP_CRANE_SCALE, 4.6 * CAMP_CRANE_SCALE},
  shadow_direction = {-0.59502, 0.009124, 0.803659},

  speed = {
    arm = {
      turn_rate = 0.001,
      extension_speed = 0.0025
    },
    grappler = {
      vertical_turn_rate = 0.001,
      horizontal_turn_rate = 0.005,
      extension_speed = 0.005,
      allow_transpolar_movement = false
    }
  },
  min_arm_extent = 0.0,
  min_grappler_extent = 0.2 * CAMP_CRANE_SCALE,
  operation_angle = 10,--in degrees
  telescope_default_extention = 0.5 * CAMP_CRANE_SCALE,

  parts = {
    {
      rotated_sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-1", {
        priority = "very-low",
        dice = 4,
        direction_count = 128,
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      rotated_sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-1-shadow", {
        priority = "very-low",
        direction_count = 64,
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      rotated_sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-1-reflection", {
        priority = "very-low",
        direction_count = 64,
        scale = 5 * CAMP_CRANE_SCALE
      }),
      layer = 1,
      allow_sprite_rotation = false,
      should_scale_for_perspective = false,
      relative_position = {0.0, 0.0, 0.0 },
      extendable_length = {0.0, 0.0, 0.0 },
      static_length = {0.0, 0.0, 0.88 * CAMP_CRANE_SCALE },
      snap_start = 1.0 * CAMP_CRANE_SCALE,
      snap_end = 1.0 * CAMP_CRANE_SCALE,
      dying_effect = default_dying_effect,
      name = "hub"
    },
    {
      rotated_sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-3", {
        priority = "very-low",
        direction_count = 128,
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      rotated_sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-3-shadow", {
        priority = "very-low",
        direction_count = 32,
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      rotated_sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-3-reflection", {
        priority = "very-low",
        direction_count = 8,
        scale = 5 * CAMP_CRANE_SCALE
      }),
      layer = -1,
      should_scale_for_perspective = false,
      relative_position = {0.0, 0.45 * CAMP_CRANE_SCALE, 0.0},
      extendable_length = {0.0, 0.0, 0.0}, --tg(37.3)
      static_length = {0.0, CAMP_CRANE_SCALE, 0.76179585 * CAMP_CRANE_SCALE},
      snap_start = 1.0 * CAMP_CRANE_SCALE,
      snap_end = 0.7 * CAMP_CRANE_SCALE,
      dying_effect = default_dying_effect,
      name = "arm_inner"
    },
    {
      rotated_sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-4", {
        priority = "very-low",
        direction_count = 128,
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      rotated_sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-4-shadow", {
        priority = "very-low",
        direction_count = 32,
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      rotated_sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-4-reflection", {
        priority = "very-low",
        direction_count = 8,
        scale = 5 * CAMP_CRANE_SCALE
      }),
      layer = 2,
      should_scale_for_perspective = false,
      relative_position = {0.0, 0.4 * CAMP_CRANE_SCALE, (0.4 * 0.76179585 + 0.1) * CAMP_CRANE_SCALE},
      extendable_length = {0.0, 0.0, 0.0 * 0.1228 * CAMP_CRANE_SCALE}, -- tg(7°)
      static_length = {0.0, 1.6 * CAMP_CRANE_SCALE, 0.19648 * CAMP_CRANE_SCALE},
      snap_start = 0.8 * CAMP_CRANE_SCALE,
      snap_end = 0.5 * CAMP_CRANE_SCALE,
      snap_end_arm_extent_multiplier = 0.1 * CAMP_CRANE_SCALE,
      dying_effect = default_dying_effect,
      name = "arm_inner_joint"
    },
    {
      rotated_sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-7", {
        priority = "very-low",
        direction_count = 128,
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      rotated_sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-7-shadow", {
        priority = "very-low",
        direction_count = 32,
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      rotated_sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-7-reflection", {
        priority = "very-low",
        direction_count = 8,
        scale = 5 * CAMP_CRANE_SCALE
      }),
      is_contractible_by_cropping = true,
      -- relative_position = {0.0, 0.4 * CAMP_CRANE_SCALE, (0.4 * 0.76179585 + 0.1) * CAMP_CRANE_SCALE},
      relative_position = {0.0, -1.5 * CAMP_CRANE_SCALE, -0.5 * 0.1944 * CAMP_CRANE_SCALE},
      -- relative_position = {0.0, -0.5 * CAMP_CRANE_SCALE, -0.5 * -0.1944 * CAMP_CRANE_SCALE},
      extendable_length = {0.0, 4 * CAMP_CRANE_SCALE, 4 * 0.1944 * CAMP_CRANE_SCALE}, -- tg(7°)
      static_length = {0.0, 1.9 * CAMP_CRANE_SCALE, 1.9 * -0.1944 * CAMP_CRANE_SCALE},
      snap_start = 0.3 * CAMP_CRANE_SCALE,
      snap_end = 0.0 * CAMP_CRANE_SCALE,
      dying_effect = default_dying_effect,
      name = "arm_central"
    },
    {
      rotated_sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-8", {
        priority = "very-low",
        direction_count = 64,
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      rotated_sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-8-shadow", {
        priority = "very-low",
        direction_count = 32,
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-8-reflection", {
        priority = "very-low",
        scale = 5 * CAMP_CRANE_SCALE
      }),
      layer = -1,
      relative_position = {0.0, 0.0, -0.17 * CAMP_CRANE_SCALE},
      static_length_grappler = {0, 0, -0.6 * CAMP_CRANE_SCALE},
      dying_effect = default_dying_effect,
      name = "grappler-hub"
    },
    {
      sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-9", {
        priority = "very-low",
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-9-shadow", {
        priority = "very-low",
        scale = CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-9-reflection", {
        priority = "very-low",
        scale = 5 * CAMP_CRANE_SCALE
      }),
      scale_to_fit_model = true,
      layer = -2,
      relative_position = {0.0, 0.0, 0.0},
      static_length_grappler = {0, 0, -0.5 * CAMP_CRANE_SCALE},
      extendable_length_grappler = {0, 0, -4 * CAMP_CRANE_SCALE},
      dying_effect = default_dying_effect,
      name = "telescope"
    },
    {
      sprite = util.sprite_load("__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-crane-10", {
        priority = "very-low",
        scale = 0.5 * CAMP_CRANE_SCALE
      }),
      sprite_shadow = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-10", {
        priority = "very-low",
        scale = 0.5 * CAMP_CRANE_SCALE,
        draw_as_shadow = true
      }),
      sprite_reflection = util.sprite_load("__space-age__/graphics/entity/agricultural-tower/agricultural-tower-crane-10-reflection", {
        priority = "very-low",
        scale = 5 * CAMP_CRANE_SCALE
      }),
      layer = -3,
      should_scale_for_perspective = false,
      relative_position = {0.0, 0.0, 0.0},
      static_length_grappler = {0, 0, -0.75 * CAMP_CRANE_SCALE},
      extendable_length_grappler = {0, 0, 0},
      dying_effect = default_dying_effect,
      name = "grappler-claw"
    }
  }
}
