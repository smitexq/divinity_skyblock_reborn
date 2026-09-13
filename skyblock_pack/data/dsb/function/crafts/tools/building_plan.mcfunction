advancement revoke @s only dsb:craft_recipe/tools/building_plan

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_buildingPlan

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_buildingPlan] AI >= #score variables run return 0


#Возврат предметов
function dsb:crafts/return_items {id:"oak_slab", count:2}
function dsb:crafts/return_items {id:"paper", count:4}
function dsb:crafts/return_items {id:"stick", count:1}
function dsb:crafts/return_items {id:"flint", count:1}
function dsb:crafts/return_items {id:"oak_planks", count:1}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:ghast_spawn_egg[minecraft:custom_data~{id:"building_plan"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'building_plan'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_buildingPlan] run function dc:get_call {tick:1, command:"recipe take @s dsb:tools/building_plan", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_buildingPlan] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}