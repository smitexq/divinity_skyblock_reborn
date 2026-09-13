#в зависимости от того, что было использовано в крафте - то и вернем
execute if entity @s[advancements={dsb:craft_recipe/other/fuel={coal=true}}] run tag @s add CraftFuelByCoal
function dc:get_call {tick:1, command:"tag @s remove CraftFuelByCoal", requirePos:false, requireEntity:true}

advancement revoke @s only dsb:craft_recipe/other/fuel

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_fuel

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_fuel] AI >= #score variables run return 0

#Возврат предметов
execute if entity @s[tag=CraftFuelByCoal] run function dsb:crafts/return_items {id:"coal", count:1}
execute if entity @s[tag=!CraftFuelByCoal] run function dsb:crafts/return_items {id:"charcoal", count:1}
function dsb:crafts/return_items {id:"gunpowder", count:2}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:structure_block[minecraft:custom_data~{id:"fuel"}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:custom_data':{id:'fuel'}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_fuel] run function dc:get_call {tick:1, command:"recipe take @s dsb:other/fuel", requirePos:false, requireEntity:true}

#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_fuel] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}