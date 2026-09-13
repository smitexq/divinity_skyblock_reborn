#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]

#Если нет предметов, то ничего не делаем
execute if data storage dsb:cts Altar{SoulsCount:0} run return 0

#Узнаем количество предмета и uuid для привязки
data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.count set from storage dsb:cts Altar.SoulsCount
data modify storage dsb:cts Temp.uuid set from storage gu:main out

execute positioned ~ ~0.4 ~ summon minecraft:item_display run function dsb:constructions/altar/work/on_item with storage dsb:cts Temp
