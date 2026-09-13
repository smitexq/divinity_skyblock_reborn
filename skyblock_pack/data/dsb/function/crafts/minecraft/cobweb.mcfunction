advancement revoke @s only dsb:craft_recipe/minecraft/cobweb

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_Cobweb

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_Cobweb] AI >= #score variables run return 0

#Возврат предметов
function dsb:crafts/return_items {id:"string", count:4}
function dsb:crafts/return_items {id:"slime_ball", count:1}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:cobweb 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{id:'minecraft:cobweb'},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_Cobweb] run function dc:get_call {tick:1, command:"recipe take @s minecraft:cobweb", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_Cobweb] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}