advancement revoke @s only dsb:craft_recipe/tools/lumberjack_axe

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_lumberjackAxe

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_lumberjackAxe] AI >= #score variables run return 0


#Возврат предметов
function dsb:crafts/return_items {id:"iron_ingot", count:3}
function dsb:crafts/return_items {id:"stick", count:2}
function dsb:crafts/return_items {id:"flint", count:1}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:iron_axe[minecraft:custom_data~{id:"lumberjack_axe"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'lumberjack_axe'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_lumberjackAxe] run function dc:get_call {tick:1, command:"recipe take @s dsb:tools/lumberjack_axe", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_lumberjackAxe] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}