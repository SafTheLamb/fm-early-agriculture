local lumber_item = mods["wood-logistics"] and settings.startup["wood-logistics-lumber"].value and "lumber" or "wood"

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
      {type="item", name="steel-plate", amount=5},
      {type="item", name=lumber_item, amount=5},
      {type="item", name="electronic-circuit", amount=2},
      {type="item", name="stone-brick", amount=5}
    },
    results = {{type="item", name="agricultural-camp", amount=1}},
    enabled = false
  }
})
