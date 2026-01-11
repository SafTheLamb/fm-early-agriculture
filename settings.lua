data:extend({
  {
    type = "bool-setting",
    name = "early-agriculture-the-basics",
    setting_type = "startup",
    hidden = true,
    default_value = true
  },
  {
    type = "bool-setting",
    name = "early-agriculture-buff-tree-plant",
    setting_type = "startup",
    default_value = true,
    order = "a[tree]-a[buff]"
  },
  {
    type = "bool-setting",
    name = "early-agriculture-artificial-grass",
    setting_type = "startup",
    default_value = true,
    order = "a[tree]-b[artificial-soil]"
  },
  {
    type = "double-setting",
    name = "early-agriculture-chop-pollution",
    setting_type = "startup",
    minimum_value = 0,
    default_value = 2.5,
    order = "b[balance]-b[pollution]"
  },
  {
    type = "bool-setting",
    name = "early-agriculture-trex",
    setting_type = "startup",
    default_value = false,
    order = "m[misc]-a[short-arms]"
  },
})
