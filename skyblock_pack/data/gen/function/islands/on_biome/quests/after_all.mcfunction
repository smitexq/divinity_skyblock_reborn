function gen:remove_forceload

###Проверяем списки островов. Если вариантов для спавна нет, то выставляем по умолчанию
execute unless data storage dsb_gen:gen CoordsForDungeons.SeaKing[] run data modify storage dsb_gen:gen CoordsForDungeons.SeaKing set value [[400,55,400,2]]
execute unless data storage dsb_gen:gen CoordsForDungeons.DesertLibrary[] run data modify storage dsb_gen:gen CoordsForDungeons.DesertLibrary set value [[-900,50,870,2]]
execute unless data storage dsb_gen:gen CoordsForDungeons.FrozenCastle[] run data modify storage dsb_gen:gen CoordsForDungeons.FrozenCastle set value [[1700,55,-1840,2]]
###

###Выписываем по одному случайному варианту из координат для островов
#Список с морским царем и старым островом одинаковый! Поэтому сначлаа выбираем из вариант для старого, а потом процесс с морским царем
#Кол-во вариантов
execute store result score #count gen store result storage dsb_gen:values AfterGen.count int 1 run data get storage dsb_gen:gen CoordsForDungeons.SeaKing
function gen:islands/on_biome/quests/get_random with storage dsb_gen:values AfterGen
#Защита, если остров один, то random не сработает 1..1
execute if score #count gen matches 1 run scoreboard players set #rnd gen 1
#Индекс в списке
execute store result storage dsb_gen:values AfterGen.index int 1 run scoreboard players remove #rnd gen 1
function gen:islands/on_biome/quests/get_old_island with storage dsb_gen:values AfterGen


execute store result score #count gen store result storage dsb_gen:values AfterGen.count int 1 run data get storage dsb_gen:gen CoordsForDungeons.SeaKing
function gen:islands/on_biome/quests/get_random with storage dsb_gen:values AfterGen
execute if score #count gen matches 1 run scoreboard players set #rnd gen 1
function gen:islands/on_biome/quests/get_dungeon_coords {namespace:"SeaKing"}



execute store result score #count gen store result storage dsb_gen:values AfterGen.count int 1 run data get storage dsb_gen:gen CoordsForDungeons.DesertLibrary
function gen:islands/on_biome/quests/get_random with storage dsb_gen:values AfterGen
execute if score #count gen matches 1 run scoreboard players set #rnd gen 1
function gen:islands/on_biome/quests/get_dungeon_coords {namespace:"DesertLibrary"}



execute store result score #count gen store result storage dsb_gen:values AfterGen.count int 1 run data get storage dsb_gen:gen CoordsForDungeons.FrozenCastle
function gen:islands/on_biome/quests/get_random with storage dsb_gen:values AfterGen
execute if score #count gen matches 1 run scoreboard players set #rnd gen 1
function gen:islands/on_biome/quests/get_dungeon_coords {namespace:"FrozenCastle"}
###

#Проход по списку с островами
function gen:islands/preset

#очищение чанков + конец загрузки в обычном мире
function gen:remove_forceload
schedule function gen:generate/nether/main 5s