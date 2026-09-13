#Функция, которая телепортирует стрелы к сущности, которая использовала эти способности
function entities:mobs/abilities/hexagon_of_arrows/link/tp

#Если игрок в радиусе 20 блоков, то задается вектор, относительно игрока. Но если игрок дальше, то создается метка на расстоянии 20 блоков на векторе до игрока и уже конечный вектор движения задается до этой точки
execute if entity @p[distance=..20] positioned as @p positioned ~ ~1 ~ summon marker run function entities:mobs/abilities/hexagon_of_arrows/set_point
execute unless entity @p[distance=..20] facing entity @p feet positioned ^ ^1 ^20 summon marker run function entities:mobs/abilities/hexagon_of_arrows/set_point


#Записываем координаты центрального маркера. Это нужно для того, чтобы у всех стрел был такой же вектор, тогда они полетят таким же 6-и угольником на игрока
data modify storage dsb:temp HexagonArrows.Marker set from entity @s Pos

#Создаем вектор для Motion по X
execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Marker[0] 100000
execute store result score *var2 variables run data get storage dsb:temp HexagonArrows.Vector[0] 100000
execute store result storage dsb:temp HexagonArrows.Vector[0] double 0.000001 run scoreboard players operation *var2 variables -= *var1 variables
#по Y
execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Marker[1] 100000
execute store result score *var2 variables run data get storage dsb:temp HexagonArrows.Vector[1] 100000
execute store result storage dsb:temp HexagonArrows.Vector[1] double 0.000001 run scoreboard players operation *var2 variables -= *var1 variables
#по Z
execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Marker[2] 100000
execute store result score *var2 variables run data get storage dsb:temp HexagonArrows.Vector[2] 100000
execute store result storage dsb:temp HexagonArrows.Vector[2] double 0.000001 run scoreboard players operation *var2 variables -= *var1 variables

#Нужно для сопоставления id стрел и маркера (если вдруг было призывано несколько таких шестиугольников)
scoreboard players operation *search use.hexagon_arrows = @s use.hexagon_arrows
#Удаляем маркер
kill @s
#Задаем стрелам вектор движения на игрока
execute as @e[type=arrow,tag=hexagon,predicate=entities:search_id_of_hexagon_arrows] at @s run function entities:mobs/abilities/hexagon_of_arrows/shot with storage dsb:temp HexagonArrows