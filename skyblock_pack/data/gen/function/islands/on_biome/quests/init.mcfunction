#Выписываем его размер, отнимаем 400 и возвращаем обратно
$execute store result score #size gen run data get storage dsb_gen:gen Islands[$(Index)][3]
$execute store result storage dsb_gen:gen Islands[$(Index)][3] int 1 run scoreboard players remove #size gen $(score)
#

###Проверка id биома
#зимний (3, 6, 10)
#Если нужный биом, то сохраняем его координаты
$execute if predicate gen:dungeons/$(predicate) run return run function gen:islands/on_biome/quests/store_coords {namespace:"$(namespace)", Index:$(Index)}
###

return fail