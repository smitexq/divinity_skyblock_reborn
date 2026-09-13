execute if predicate gen:pots/forests run return run function gen:pots/entities/forests
execute if predicate gen:pots/ocean_biomes run return run function gen:pots/entities/ocean_biomes
execute if predicate gen:pots/deserts run return run function gen:pots/entities/deserts
execute if predicate gen:pots/snowy run return run function gen:pots/entities/snowy
execute if biome ~ ~ ~ minecraft:dark_forest run return run function gen:pots/entities/dark_forest
execute if biome ~ ~ ~ minecraft:savanna run return run function gen:pots/entities/savanna
execute if biome ~ ~ ~ minecraft:swamp run return run function gen:pots/entities/swamp
execute if biome ~ ~ ~ minecraft:jungle run return run function gen:pots/entities/jungle

execute if biome ~ ~ ~ minecraft:mushroom_fields run summon minecraft:mooshroom ~ ~ ~ {Age:-20000}