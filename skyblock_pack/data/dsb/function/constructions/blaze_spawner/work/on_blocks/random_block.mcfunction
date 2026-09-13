#Выбираем индекс обсы, которую сломаем
$execute store result storage dsb:cts Temp.index int 1 run random value 0..$(len)

function dsb:constructions/blaze_spawner/work/on_blocks/on_index with storage dsb:cts Temp