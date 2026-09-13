###Если вода, то добавляем
execute if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run return run function food:cauldron/action/add_water_with_bottle with storage gu:main

###Иначе это пузырек, забираем воду
$execute at $(out) if block ~ ~ ~ minecraft:cauldron run return 0

#Выдаем пузырек с водой и забираем пустой
tag @s add BlockInvChanged

item modify entity @s weapon.mainhand food:remove_item
summon item ~ ~ ~ {Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

tag @s remove BlockInvChanged
###

playsound minecraft:item.bottle.fill ambient @s

$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=3] run return run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=2] run return run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
$execute at $(out) if block ~ ~ ~ minecraft:water_cauldron[level=1] run return run setblock ~ ~ ~ minecraft:cauldron