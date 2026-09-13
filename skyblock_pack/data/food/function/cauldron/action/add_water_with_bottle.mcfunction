#Если котел заполненный, то не заполняем
$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=3] run return 0

#Выдаем пузырек
tag @s add BlockInvChanged

item modify entity @s weapon.mainhand food:remove_item
summon item ~ ~ ~ {Item:{id:"minecraft:glass_bottle",count:1}}

tag @s remove BlockInvChanged
###

playsound minecraft:item.bottle.empty ambient @s

$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=2] run return run setblock ~ ~ ~ minecraft:water_cauldron[level=3]
$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=1] run return run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
$execute at $(out) if block ~ ~ ~ minecraft:cauldron run return run setblock ~ ~ ~ minecraft:water_cauldron[level=1]