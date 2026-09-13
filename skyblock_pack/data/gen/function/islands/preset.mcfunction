#Для генерации островов. Индекс острова в списке, кол-во островов 
execute store result storage dsb_gen:values Index int 1 run scoreboard players set #index gen 0
execute store result score #temp gen run data get storage dsb_gen:gen Islands
#Если островов не осталось, то закончить
execute if score #temp gen matches 0 run return fail
#
execute store result storage dsb_gen:values LastIslandIndex int 1 run scoreboard players remove #temp gen 1

#Координаты для сравнения (область внутри квадрата NxN чанков). Для поиска островов. Corner2 - отрицательная корда
data modify storage dsb_gen:values corner2 set from storage dsb_gen:values Circle.CornerCoords[0][0]
execute store result score #temp gen run data get storage dsb_gen:values corner2
scoreboard players operation #temp gen *= #-1 gen
#corner1 - положительная
execute store result storage dsb_gen:values corner1 int 1 run scoreboard players remove #temp gen 1

function gen:islands/main with storage dsb_gen:values