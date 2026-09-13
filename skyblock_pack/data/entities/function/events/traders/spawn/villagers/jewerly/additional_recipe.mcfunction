data modify entity @s Offers.Recipes append value {maxUses:1, sell:{id:"minecraft:emerald", count:1}, buy:{id:"minecraft:emerald", count:8}, buyB:{id:"minecraft:paper", count:1}, xp:0}

execute store result score *var1 variables run random value 0..3 dsb:traders/jewerly/recipe_rare

execute if score *var1 variables matches 0 run return run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/uncommon", slot: -1, id:"oak_log", count:32}
execute if score *var1 variables matches 1 run return run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/rare", slot: -1, id:"iron_ingot", count:4}
execute if score *var1 variables matches 2 run return run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/epic", slot: -1, id:"emerald", count:8}
execute if score *var1 variables matches 3 run return run function entities:events/traders/spawn/villagers/jewerly/recipe {path: "dsb:recipes/overworld_recipes/legendary", slot: -1, id:"diamond", count:6}