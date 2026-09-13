#Убавляем индекс острова в списке (индексация с 0, а random выдал 1..(кол-во))
execute store result storage dsb_gen:values AfterGen.index int 1 run scoreboard players remove #rnd gen 1
$data modify storage dsb_gen:values AfterGen.namespace set value "$(namespace)"

function gen:islands/on_biome/quests/store_dungeon with storage dsb_gen:values AfterGen

#добавляем в общий список оставщиеся острова с первоначальной распаковкой, чтобы не получилось 3 вложенных списка
$data modify storage dsb_gen:gen Islands append from storage dsb_gen:gen CoordsForDungeons.$(namespace)[]