$setblock ~ ~$(offset) ~ fire
#Удаление палок
item modify entity @s weapon.mainhand food:remove_item
item modify entity @s weapon.offhand food:remove_item

advancement grant @s only dsb:skyblock/constructions/create_fire

#Интеллект
scoreboard players add @s ai_fire 1
execute if score @s ai_fire matches 1 run scoreboard players add @s AI 1
execute if score @s ai_fire matches 2 run scoreboard players add @s AI 1