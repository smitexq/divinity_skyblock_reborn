#На каждый биом
execute if biome ~ ~ ~ minecraft:plains run return run function gen:islands/on_biome/init {range:"1..16", path:"small/plains"}
execute if biome ~ ~ ~ minecraft:forest run return run function gen:islands/on_biome/init {range:"1..12", path:"small/forest"}
execute if biome ~ ~ ~ minecraft:river run return run function gen:islands/on_biome/init {range:"1..2", path:"small/ocean"}

execute if biome ~ ~ ~ minecraft:desert run return run function gen:islands/on_biome/init {range:"1..12", path:"small/desert"}

execute if biome ~ ~ ~ minecraft:snowy_plains run return run function gen:islands/on_biome/init {range:"1..12", path:"small/snow"}
execute if biome ~ ~ ~ minecraft:taiga run return run place jigsaw gen:islands/small/taiga1 gen:island/init 1
execute if biome ~ ~ ~ minecraft:frozen_peaks run return run function gen:islands/on_biome/init {range:"1..7", path:"small/frozen_pikes"}

execute if biome ~ ~ ~ minecraft:ocean run return run function gen:islands/on_biome/init {range:"1..2", path:"small/ocean"}
execute if biome ~ ~ ~ minecraft:cold_ocean run return run function gen:islands/on_biome/init {range:"1..2", path:"small/ocean"}
execute if biome ~ ~ ~ minecraft:warm_ocean run return run function gen:islands/on_biome/init {range:"1..2", path:"small/ocean"}

execute if biome ~ ~ ~ minecraft:savanna run return run function gen:islands/on_biome/init {range:"1..3", path:"small/savanna"}

execute if biome ~ ~ ~ minecraft:dark_forest run return run function gen:islands/on_biome/init {range:"1..6", path:"small/dark_forest"}
execute if biome ~ ~ ~ minecraft:swamp run return run function gen:islands/on_biome/init {range:"1..3", path:"small/swamp"}
execute if biome ~ ~ ~ minecraft:jungle run return run function gen:islands/on_biome/init {range:"1..5", path:"small/jungle"}
execute if biome ~ ~ ~ minecraft:badlands run return run function gen:islands/on_biome/init {range:"1..2", path:"small/badlands"}
execute if biome ~ ~ ~ minecraft:mushroom_fields run return run function gen:islands/on_biome/init {range:"1..2", path:"small/mushroom"}
execute if biome ~ ~ ~ minecraft:cherry_grove run return run function gen:islands/on_biome/init {range:"1..3", path:"small/cherry"}
