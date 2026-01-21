if mods["alien-biomes"] then
	local alien_biomes_tiles = alien_biomes.list_tiles(alien_biomes.require_tag(alien_biomes.all_tiles(), {"dirt", "grass", "sand", "snow"}))
	for _,tile in pairs(alien_biomes_tiles) do
		table.insert(data.raw.item["artificial-grass"].place_as_tile.tile_condition, tile)
	end
	-- data.raw.item["artificial-grass"].place_as_tile.tile_condition = util.merge(
	-- 	data.raw.item["artificial-grass"].place_as_tile.tile_condition,
	-- 	alien_biomes.list_tiles(alien_biomes.require_tag(alien_biomes.all_tiles(), {"dirt", "grass", "sand", "snow"})))
end
