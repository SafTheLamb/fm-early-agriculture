local frep = require("__fdsl__.lib.recipe")

-------------------------------------------------------------------------- Tree changes

local tree_plant = data.raw.plant["tree-plant"]
if settings.startup["early-agriculture-buff-tree-plant"].value then
  tree_plant.minable.results = {{type="item", name="wood", amount=10}}
  tree_plant.growth_ticks = 5 * minute
end

local harvest_pollution = settings.startup["early-agriculture-chop-pollution"].value
if harvest_pollution > 0 then
  tree_plant.harvest_emissions = {pollution=harvest_pollution}
end

-------------------------------------------------------------------------- Tower changes

data.raw.item["agricultural-tower"].weight = 100 * kg

frep.add_ingredient("agricultural-tower", {type="item", name="agricultural-camp", amount=1})
frep.replace_ingredient("agricultural-tower", "electronic-circuit", "processing-unit")
frep.replace_ingredient("agricultural-tower", "steel-plate", "carbon-fiber")
frep.replace_ingredient("agricultural-tower", "spoilage", {type="item", name="pentapod-egg", amount=1})
frep.scale_ingredient("agricultural-tower", "landfill", {amount=5})
frep.set_surface_condition("agricultural-tower", {property="pressure", min=2000, max=2000})
if mods["aai-industry"] then
  frep.add_ingredient("agricultural-tower", {type="item", name="electric-engine-unit", amount=5})
end

local agricultural_tower = data.raw["agricultural-tower"]["agricultural-tower"]
agricultural_tower.energy_usage = "250kW"
agricultural_tower.crane_energy_usage = "250kW"

-------------------------------------------------------------------------- Assembler changes

if mods["aai-industry"] then
  table.insert(data.raw["assembling-machine"]["burner-assembling-machine"].crafting_categories, "organic-or-assembling")
end
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "organic-or-assembling")
