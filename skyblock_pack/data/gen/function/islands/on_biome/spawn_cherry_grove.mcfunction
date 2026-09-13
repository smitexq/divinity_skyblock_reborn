forceload add ~-7 ~-7 ~7 ~7

execute if score #sizeOfIsland gen matches 50 run function gen:islands/on_biome/init {range:"1..3", path:"small/cherry"}
execute if score #sizeOfIsland gen matches 51 run place jigsaw gen:islands/medium/cherry1 gen:island/init 1
execute if score #sizeOfIsland gen matches 52 run function gen:islands/on_biome/init {range:"1..2", path:"large/cherry"}

fillbiome ~-7 -60 ~-7 ~7 319 ~7 minecraft:cherry_grove

forceload remove ~-7 ~-7 ~7 ~7
return 1