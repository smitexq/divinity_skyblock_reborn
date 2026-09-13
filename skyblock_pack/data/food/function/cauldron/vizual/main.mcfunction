#Удаляем тег и узнаем количество предметов
tag @s remove UpdateVizual
$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items

#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]
#uuid interacion'a для привязки
data modify storage dsb:displays sourceUUID set from storage gu:main out

execute if score *var1 variables matches 1 run return run function food:cauldron/vizual/1_item with storage gu:main
execute if score *var1 variables matches 2 run return run function food:cauldron/vizual/2_item with storage gu:main
execute if score *var1 variables matches 3 run return run function food:cauldron/vizual/3_item with storage gu:main