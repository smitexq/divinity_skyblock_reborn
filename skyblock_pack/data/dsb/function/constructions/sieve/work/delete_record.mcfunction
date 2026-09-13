#В Sieve.Coords хранятся координаты сита, блок который просеивается и uuid того, кто просеивает (если с удачей)
#Достаем запись, где указаны координаты сита иuid игрока с везением, который устноавил блок
$data modify storage dsb:cts Temp set from storage dsb:cts Sieve.Coords[{x:$(x), y:$(y), z:$(z)}]
$data remove storage dsb:cts Sieve.Coords[{x:$(x), y:$(y), z:$(z)}]

#В зависимости от блока разная таблица добычи
$data modify storage dsb:cts Temp.block set value $(block)
function dsb:constructions/sieve/work/on_owner with storage dsb:cts Temp