advancement revoke @s only dsb:craft_recipe/ench_books/sharpness

#получаем кол-во интеллекта
execute store result score #score variables run data get storage dsb:recipes RecipesAI.RecipeOfCraft_EnchantedBook

#Если хватает интеллекта, то всё окей
execute if score @s[tag=RecipeOfCraft_BookSharpness] AI >= #score variables run return 0


#Возврат предметов
function dsb:crafts/return_items {id:"book", count:1}
function dsb:crafts/return_items {id:"amethyst_shard", count:1}
function dsb:crafts/return_items {id:"iron_sword", count:1}
function dsb:crafts/return_items {id:"flint", count:2}

#Очистка
playsound minecraft:entity.villager.no ambient @s
clear @s minecraft:enchanted_book[minecraft:stored_enchantments={"sharpness":2}] 1
function dc:get_call {tick:1, command:"kill @e[type=item, nbt={Item:{components:{'minecraft:stored_enchantments':{levels:{'minecraft:power':2}}}},Age:0s}]", requirePos:false, requireEntity:true}

#Забираем рецепт
execute if entity @s[tag=!RecipeOfCraft_BookSharpness] run function dc:get_call {tick:1, command:"recipe take @s dsb:ench_books/sharpness", requirePos:false, requireEntity:true}
#Причина отмены крафта:
execute if entity @s[tag=!RecipeOfCraft_BookSharpness] run return run title @s actionbar {"translate":"dsb.events.no_recipe_craft","color":"red"}
title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":[{"score":{"objective":"variables","name":"#score"}},{"score":{"objective":"AI","name":"@s"}}],"color":"red"}