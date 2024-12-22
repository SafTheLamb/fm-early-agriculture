data:extend({
  {
    type = "technology",
    name = "basic-agriculture",
    icon = "__wood-universe-assets__/graphics/technology/basic-agriculture.png",
    icon_size = 256,
    effects = {
      {type="unlock-recipe", recipe="agricultural-camp"},
      {type="unlock-recipe", recipe="wood-processing"}
    },
    prerequisites = mods["aai-industry"] and {"electricity", "glass-processing"} or {"steel-processing"},
    unit = {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    }
  }
})
