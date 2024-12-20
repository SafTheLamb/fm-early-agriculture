data:extend({
  {
    type = "corpse",
    name = "agricultural-camp-remnants",
    icon = "__early-agriculture__/graphics/icons/agricultural-camp.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "agriculture-remnants",
    order = "a[agricultural-camp]",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = {
      filename = "__early-agriculture__/graphics/entity/agricultural-camp/agricultural-camp-remnants.png",
      line_length = 1,
      width = 250,
      height = 250,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, 0),
      scale = 0.5
    }
  }
})
