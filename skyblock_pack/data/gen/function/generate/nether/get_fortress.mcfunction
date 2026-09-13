###Записываем координаты острова данжа
execute store result score #count gen store result storage dsb_gen:values AfterGen.count int 1 run data get storage dsb_gen:gen CoordsForDungeons.Fortress
function gen:islands/on_biome/quests/get_random with storage dsb_gen:values AfterGen
function gen:islands/on_biome/quests/get_dungeon_coords {namespace:"Fortress"}
###

##генерируем оставшиеся острова
scoreboard players set #isEndGeneration gen 1
execute store result score #countNetherIslands gen run data get storage dsb_gen:gen Islands
execute in minecraft:the_nether run function gen:generate/nether/loop
##