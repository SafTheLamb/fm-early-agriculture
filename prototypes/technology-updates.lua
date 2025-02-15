local ftech = require("__fdsl__.lib.technology")

data.raw.technology["tree-seeding"].icon = "__wood-universe-assets__/graphics/technology/agriculture.png"
data.raw.technology["tree-seeding"].prerequisites = {"carbon-fiber"}
ftech.add_unlock("tree-seeding", "agricultural-tower")
ftech.remove_unlock("tree-seeding", "wood-processing")

data.raw.technology["agriculture"].icon = "__wood-universe-assets__/graphics/technology/gleba-agriculture.png"
ftech.remove_unlock("agriculture", "agricultural-tower")
