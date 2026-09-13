$execute store result score #coord gen run data get storage dsb_gen:gen Islands[$(Index)][2]
#Если у острова координаты по Z НЕ лежит в нужно диапазоне, то пропускаем
$execute unless score #coord gen matches $(corner2)..$(corner1) run return 0

#Иначе выписываем координаты и размер
$execute store result storage dsb_gen:values CurrentIsland.x int 1 run data get storage dsb_gen:gen Islands[$(Index)][0]
$execute store result storage dsb_gen:values CurrentIsland.y int 1 run data get storage dsb_gen:gen Islands[$(Index)][1]
$execute store result storage dsb_gen:values CurrentIsland.z int 1 run data get storage dsb_gen:gen Islands[$(Index)][2]
$execute store result score #sizeOfIsland gen run data get storage dsb_gen:gen Islands[$(Index)][3]

#Записываем удалось ли сгенерировать остров (внутри функции on_pos). Если это возможный квестовый, и в случае неподходящего биома, его номер уменьшится до обычного размера...
#Тогда не нужно его удалять из списка, он сгенерируется при следующем проходе
function gen:islands/on_position with storage dsb_gen:values CurrentIsland

#Если не удалось, то скип
execute if score #result gen matches 0 run return fail

#Удаляем остров из списка
$data remove storage dsb_gen:gen Islands[$(Index)]

execute store result score #temp gen run data get storage dsb_gen:gen Islands
execute store result storage dsb_gen:values LastIslandIndex int 1 run scoreboard players remove #temp gen 1
execute store result storage dsb_gen:values Index int 1 run scoreboard players remove #index gen 1
#Если индекс последний, то нужно добавить еще единицу, так как в main.mcfunction обратно добавться и тогда будет выход за список -> ошибка -> генерация острова на нулях (потому что в main остается номер последнего индекса тот же, до уменьшения (из за макроса))
execute if score #index gen = #temp gen store result storage dsb_gen:values Index int 1 run scoreboard players add #index gen 1
