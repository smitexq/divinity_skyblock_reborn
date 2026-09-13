#На каждый биом
execute if biome ~ ~ ~ minecraft:plains run return run function gen:islands/on_biome/init {range:"1..3", path:"medium/forest"}
execute if biome ~ ~ ~ minecraft:forest run return run function gen:islands/on_biome/init {range:"1..3", path:"medium/forest"}
execute if biome ~ ~ ~ minecraft:river run return run place jigsaw gen:islands/medium/river1 gen:island/init 1

execute if biome ~ ~ ~ minecraft:desert run return run function gen:islands/on_biome/init {range:"1..5", path:"medium/desert"}

execute if biome ~ ~ ~ minecraft:snowy_plains run return run function gen:islands/on_biome/init {range:"1..4", path:"medium/snow"}
execute if biome ~ ~ ~ minecraft:taiga run return run function gen:islands/on_biome/init {range:"1..5", path:"medium/taiga"}
execute if biome ~ ~ ~ minecraft:frozen_peaks run return run function gen:islands/on_biome/init {range:"1..2", path:"medium/frozen_pikes"}

execute if biome ~ ~ ~ minecraft:ocean run return run place jigsaw gen:islands/medium/warm_ocean1 gen:island/init 1
execute if biome ~ ~ ~ minecraft:cold_ocean run return run place jigsaw gen:islands/medium/cold_ocean1 gen:island/init 1
execute if biome ~ ~ ~ minecraft:warm_ocean run return run place jigsaw gen:islands/medium/warm_ocean1 gen:island/init 1

execute if biome ~ ~ ~ minecraft:savanna run return run place jigsaw gen:islands/medium/savanna1 gen:island/init 1

execute if biome ~ ~ ~ minecraft:dark_forest run return run place jigsaw gen:islands/medium/dark_forest1 gen:island/init 1
execute if biome ~ ~ ~ minecraft:swamp run return run place jigsaw gen:islands/medium/swamp1 gen:island/init 1
execute if biome ~ ~ ~ minecraft:jungle run return run function gen:islands/on_biome/init {range:"1..2", path:"medium/jungle"}
execute if biome ~ ~ ~ minecraft:badlands run return run function gen:islands/on_biome/init {range:"1..3", path:"medium/badlands"}
execute if biome ~ ~ ~ minecraft:mushroom_fields run return run function gen:islands/on_biome/init {range:"1..3", path:"medium/mushroom"}
execute if biome ~ ~ ~ minecraft:cherry_grove run return run place jigsaw gen:islands/medium/cherry1 gen:island/init 1
