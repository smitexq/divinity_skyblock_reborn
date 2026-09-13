kill @s

#Частицы + звуки
particle minecraft:explosion
particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.3 20 force @a
execute as @a[distance=..50] at @s run playsound minecraft:entity.generic.explode ambient @s

#Призыв мини-бомбочек
scoreboard players reset @s RecursionDepth
function entities:bosses/sea_king/abilities/water_bomb/set_values
#На всякий случай убиваем их, если они сами не уничтожились
function dc:get_call {tick:45, command:"kill @e[type=minecraft:item,tag=WaterBombAnimation, limit=101]", requirePos:false, requireEntity:false}
function dc:get_call {tick:20, command:"function entities:bosses/sea_king/abilities/water_bomb/on_mini_bomb/main", requirePos:false, requireEntity:false}