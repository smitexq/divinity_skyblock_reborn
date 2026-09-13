advancement revoke @s only dsb:craft_recipe/other/scroll_of_mending

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_scrollOfMending

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_scrollOfMending] AI >= #score variables run return 0


#Возврат предметов
function dsb:crafts/return_items {id:"paper", count:6}
function dsb:crafts/return_items {id:"feather", count:1}
function dsb:crafts/return_items {id:"quartz", count:1}
function dsb:crafts/return_items {id:"lapis_lazuli", count:1}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:structure_block[minecraft:custom_data~{id:"scroll_of_mending_1"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'scroll_of_mending'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_scrollOfMending] run function dc:get_call {tick:1, command:"recipe take @s dsb:other/scroll_of_mending", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_scrollOfMending] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}