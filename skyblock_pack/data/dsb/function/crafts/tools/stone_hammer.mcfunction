advancement revoke @s only dsb:craft_recipe/tools/stone_hammer

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_stoneHammer

#Если хватает интеллекта, то всё окей
execute if score @s AI >= #score variables run return 0

#Возврат предметов
function dsb:crafts/return_items {id:"cobblestone", count:5}
function dsb:crafts/return_items {id:"stick", count:2}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:stone_pickaxe[minecraft:custom_data~{id:"stone_hammer"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'stone_hammer'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Причина отмены крафта:
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}