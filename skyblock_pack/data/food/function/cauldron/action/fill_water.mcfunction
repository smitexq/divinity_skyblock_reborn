#Заполняем водой и заменяем на пустое ведро
$execute if items entity @s weapon.mainhand minecraft:water_bucket at $(out) run setblock ~ ~ ~ minecraft:water_cauldron[level=3]
execute if items entity @s weapon.mainhand minecraft:water_bucket run playsound minecraft:item.bucket.empty ambient @a ~ ~ ~ 1
execute if items entity @s weapon.mainhand minecraft:water_bucket run return run item replace entity @s weapon.mainhand with minecraft:bucket

###Иначе заполняем ведро водой
#Проверка что есть вода
$execute at $(out) unless block ~ ~ ~ minecraft:water_cauldron[level=3] run return 0

$execute at $(out) run setblock ~ ~ ~ minecraft:cauldron
item modify entity @s weapon.mainhand food:remove_item
summon item ~ ~ ~ {Item:{id:"minecraft:water_bucket",count:1}}
playsound minecraft:item.bucket.fill ambient @a ~ ~ ~ 1