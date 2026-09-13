#Удаляем теги, очки скорборда, визуал блока
scoreboard players reset @s Composter
#земля не создается
tag @s remove GrowProces
kill @e[type=block_display,tag=composterBlock, distance=..1.5]

tag @s remove growOn
tag @s add growOff

#Очищаем функцию с созданием земли
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/composter/work/grow/init"
function dc:clear_schedule with storage dsb:dc_remove temp

#Очищаем функцию частиц
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/composter/work/grow/particle"
function dc:clear_schedule with storage dsb:dc_remove temp