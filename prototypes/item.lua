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
