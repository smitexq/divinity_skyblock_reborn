#Если не открыто даже первое кольцо странника, то не спавним картографа
execute if score *wanderer_ring GameStage matches 0 run return run kill @s

#Профессия
data merge entity @s {Tags:["Trader"], CustomName:'{"translate":"entity.minecraft.villager.cartographer"}', Brain:{memories:{"minecraft:job_site": {value: {pos: [I; 18218415, 0, 0], dimension: "minecraft:overworld"}}}}, VillagerData:{level:5, profession:"minecraft:librarian", type:"minecraft:snow"}, Offers:{Recipes:[]}}

#
setblock 17112022 0 0 light_blue_shulker_box

#Карта к морскому царю
function entities:events/traders/spawn/villagers/cartography/add_map {path:"sea_king", id:"coal", count:32}
#

#Карта к старому острову
function entities:events/traders/spawn/villagers/cartography/add_map {path:"old_island", id:"oak_sapling", count:18}
#

#Карта к Незерской крепости
execute if score *nether GameStage matches 1 run function entities:events/traders/spawn/villagers/cartography/add_map {path:"fortress", id:"blaze_rod", count:20}
#

#Карта к Заброшенной библиотеке
execute if score *traveler_ring GameStage matches 1 run function entities:events/traders/spawn/villagers/cartography/add_map {path:"desert_library", id:"book", count:24}
#

#Карта к Замку элеум лойс
execute if score *scholar_ring GameStage matches 1 run function entities:events/traders/spawn/villagers/cartography/add_map {path:"frozen_castle", id:"diamond", count:12}
#

setblock 17112022 0 0 air