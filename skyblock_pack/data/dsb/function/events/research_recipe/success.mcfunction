#Не хватает интеллекта
$execute unless score @s AI matches $(ai).. run playsound entity.villager.no ambient @s
$execute unless score @s AI matches $(ai).. run return run title @s actionbar {"translate":"dsb.events.lack_of_intelligence","with":["$(ai)",{"score":{"objective":"AI","name":"@s"}}],"color":"red"}

##добавляем интеллект за исследование рецепта
execute store result score *var1 variables run data get entity @s SelectedItem.components."minecraft:custom_data".tier_ai
scoreboard players operation @s AI += *var1 variables
##

#Успешное изучение
$tag @s add $(id)
tellraw @s {"translate":"dsb.events.research_recipe.success","color":"green"}
playsound minecraft:entity.experience_orb.pickup
item modify entity @s weapon.mainhand food:remove_item

scoreboard players add @s dsb.adv.research_recipe 1

###если был изучен waystone, то всем добавляется рецепт кристалла (при этом выводится сообщение всем 1 раз)
execute if score *link_crystal_craft gameplay matches 0 if entity @s[tag=RecipeOf_Waystone] run tellraw @a {"translate":"dsb.events.waystone.craft_link_crystal", "color":"gold"}
execute if entity @s[tag=RecipeOf_Waystone] run scoreboard players set *link_crystal_craft gameplay 1
###

#Если у игрок есть книга с рецептами в инвентаре, то нужно обновить её
function dsb:events/recipes_book/get