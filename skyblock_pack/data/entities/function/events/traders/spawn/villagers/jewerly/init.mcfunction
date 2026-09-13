#Профессия
data merge entity @s {Tags:["Trader"], CustomName:'{"translate":"dsb.entity.traders.jewerly"}', Brain:{memories:{"minecraft:job_site": {value: {pos: [I; 18218415, 0, 0], dimension: "minecraft:overworld"}}}}, VillagerData:{level:5, profession:"minecraft:weaponsmith", type:"minecraft:savanna"}, Offers:{Recipes:[{maxUses:5, sell:{id:"minecraft:iron_ingot", count:3}, buy:{id:"minecraft:iron_ingot", count:3}, xp:0}, {maxUses:1, sell:{id:"minecraft:iron_ingot", count:1}, buy:{id:"minecraft:oak_log", count:48}, buyB:{id:"minecraft:paper", count:1}, xp:0}, {maxUses:2, sell:{id:"minecraft:iron_ingot", count:3}, buy:{id:"minecraft:diamond", count:3}, xp:0}, {maxUses:2, sell:{id:"minecraft:emerald", count:5}, buy:{id:"minecraft:emerald", count:5}, xp:0}]}}


###Товары
setblock 17112022 0 0 light_blue_shulker_box

#Растения
function entities:events/traders/spawn/villagers/jewerly/recipe {path: "entities:traders/jewerly/plants", slot: 0, id:"iron_ingot", count:2}
#

#Первый рецепт
execute store result score *var1 variables run random value 0..3 dsb:traders/jewerly/recipe_rare
execute if score *var1 variables matches 0 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/uncommon", slot: 1, id:"oak_log", count:32}
execute if score *var1 variables matches 1 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/rare", slot: 1, id:"iron_ingot", count:4}
execute if score *var1 variables matches 2 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/epic", slot: 1, id:"emerald", count:8}
execute if score *var1 variables matches 3 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/legendary", slot: 1, id:"diamond", count:6}
#

#Кольцо
function entities:events/traders/spawn/villagers/jewerly/recipe {path: "entities:traders/jewerly/rings", slot: 2, id:"diamond", count:3}
#

#Артефакт
function entities:events/traders/spawn/villagers/jewerly/recipe {path: "entities:traders/jewerly/artifact", slot: 3, id:"emerald", count:3}
#


#50% на доп редкую вещь
execute store result score *var1 variables run random value 0..1 dsb:traders/jewerly/if_additional_rare_loot
execute if score *var1 variables matches 0 run data modify entity @s Offers.Recipes append value {maxUses:1, sell:{id:"minecraft:emerald", count:1}, buy:{id:"minecraft:emerald", count:8}, xp:0}
execute if score *var1 variables matches 0 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "entities:traders/jewerly/additional_rare_item", slot: -1, id:"emerald", count:8}
#

#40% на доп рецепт
execute store result score *var1 variables run random value 0..9 dsb:traders/jewerly/if_additional_recipe
execute if score *var1 variables matches 0..3 run function entities:events/traders/spawn/villagers/jewerly/additional_recipe
#

#40% на доп кольцо
execute store result score *var1 variables run random value 0..9 dsb:traders/jewerly/if_additional_ring
execute if score *var1 variables matches 0..3 run data modify entity @s Offers.Recipes append value {maxUses:1, sell:{id:"minecraft:emerald", count:1}, buy:{id:"minecraft:emerald", count:5}, xp:0}
execute if score *var1 variables matches 0..3 run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "entities:traders/jewerly/rings", slot: -1, id:"diamond", count:3}
#

setblock 17112022 0 0 air