# . . * (corner1)
# . . .
# * . . (corner2)

#Если островов не осталось, то закончить
execute store result score #temp gen run data get storage dsb_gen:gen Islands
execute if score #temp gen matches 0 run return fail

$execute store result score #coord gen run data get storage dsb_gen:gen Islands[$(Index)][0]
#Если у острова координаты по X лежит в нужно диапазоне, то проверяем дальше
$execute if score #coord gen matches $(corner2)..$(corner1) run function gen:islands/next_coord with storage dsb_gen:values

execute store result storage dsb_gen:values Index int 1 run scoreboard players add #index gen 1


$execute if score #index gen matches ..$(LastIslandIndex) run function gen:islands/main with storage dsb_gen:values