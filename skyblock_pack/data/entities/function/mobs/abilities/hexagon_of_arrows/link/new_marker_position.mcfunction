#Направляем его взгляд на игрока
execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

#Телепорт стрел в нужную позицию относительно нового положения маркера
execute positioned ^0.75 ^-1.3 ^ run tp @e[type=arrow,tag=hexagon,tag=1,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~
execute positioned ^1.5 ^ ^ run tp @e[type=arrow,tag=hexagon,tag=2,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~
execute positioned ^0.75 ^1.3 ^ run tp @e[type=arrow,tag=hexagon,tag=3,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~
execute positioned ^-0.75 ^1.3 ^ run tp @e[type=arrow,tag=hexagon,tag=4,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~
execute positioned ^-1.5 ^ ^ run tp @e[type=arrow,tag=hexagon,tag=5,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~
execute positioned ^-0.75 ^-1.3 ^ run tp @e[type=arrow,tag=hexagon,tag=6,predicate=entities:search_id_of_hexagon_arrows,limit=1] ~ ~ ~

#Находим эпсилон вектор-направления: задает незаметное движение стрелы, тем самым меняя направление. Вектор идет от точки, где центральный маркер и до точки, расположенной на прямой, ведущей до игрока. Эта прямая очень короткая
function entities:mobs/abilities/hexagon_of_arrows/link/find_tp_vector