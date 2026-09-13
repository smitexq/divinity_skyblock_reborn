advancement revoke @s only dsb:craft_recipe/tools/diamond_hammer

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_diamondHammer

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_diamondHammer] AI >= #score variables run return 0


#Возврат предметов
function dsb:crafts/return_items {id:"diamond", count:3}
function dsb:crafts/return_items {id:"gold_nugget", count:2}
function dsb:crafts/return_items {id:"stick", count:2}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:diamond_pickaxe[minecraft:custom_data~{id:"diamond_hammer"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'diamond_hammer'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_diamondHammer] run function dc:get_call {tick:1, command:"recipe take @s dsb:tools/diamond_hammer", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_diamondHammer] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}