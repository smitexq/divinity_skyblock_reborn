execute if biome ~ ~ ~ minecraft:crimson_forest run return run function gen:islands/on_biome/init {range:"1..2", path:"nether/small/crimson"}

execute if biome ~ ~ ~ minecraft:warped_forest run return run function gen:islands/on_biome/init {range:"1..2", path:"nether/small/warped"}

execute if biome ~ ~ ~ minecraft:basalt_deltas run return run function gen:islands/on_biome/init {range:"1..2", path:"nether/small/delta"}

execute if biome ~ ~ ~ minecraft:soul_sand_valley run return run place jigsaw gen:islands/nether/small/soul1 gen:island/init 1

execute if biome ~ ~ ~ minecraft:nether_wastes run return run place jigsaw gen:islands/nether/small/wastelands1 gen:island/init 1