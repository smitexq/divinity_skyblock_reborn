###Если в слоте 64 земли, то ничего не делаем
execute if items entity @s container.16 minecraft:dirt[count=64] run return run function dsb:constructions/composter/work/grow/stop
#Визуал земли
kill @e[type=block_display,tag=composterBlock, distance=..1.5]

playsound minecraft:block.beehive.exit ambient @a[distance=..9] ~ ~ ~ 2

#Если нет земли, но есть другой предмет, то его нужно удалить и вернуть
execute unless items entity @s container.16 minecraft:dirt if items entity @s container.16 * run function dsb:constructions/composter/work/grow/return_item
#Если есть земля то добавляем кол-во
execute if items entity @s container.16 minecraft:dirt run item modify entity @s container.16 dsb:composter_place_dirt
#Если нет земли, то устанавливаем значение 1
execute unless items entity @s container.16 minecraft:dirt run item replace entity @s container.16 with minecraft:dirt

scoreboard players reset @s Composter
tag @s remove GrowProces

#Очищаем функцию на частицы
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/composter/work/grow/particle"
function dc:clear_schedule with storage dsb:dc_remove temp

###Уменьшаем кол-во очков
$execute store result score *var1 variables run data get storage dsb:cts Composter.$(out).CountFloraPoints
$execute store result storage dsb:cts Composter.$(out).CountFloraPoints int 1 run scoreboard players remove *var1 variables 20
#Устанавливаем новое значение для отображения кол-ва растительности
$function dsb:constructions/composter/work/menu/set_string_count with storage dsb:cts Composter.$(out)

#Шанс на высохшую листву 15%
execute store result score *var1 variables run random value 0..99 dsb:dry_leaves
execute if score *var1 variables matches 0..14 run setblock ~ ~3 ~ minecraft:mangrove_roots

#Запускаем следующее создание земли
function dsb:constructions/composter/work/grow/start with storage gu:main