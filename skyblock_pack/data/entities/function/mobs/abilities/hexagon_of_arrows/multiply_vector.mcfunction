data modify storage dsb:temp HexagonArrows.Vector set from entity @s Motion
scoreboard players set *var2 variables 40

execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Vector[0] 1000
execute store result storage dsb:temp HexagonArrows.Vector[0] double 0.00005 run scoreboard players operation *var1 variables *= *var2 variables

execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Vector[1] 1000
execute store result storage dsb:temp HexagonArrows.Vector[1] double 0.00005 run scoreboard players operation *var1 variables *= *var2 variables

execute store result score *var1 variables run data get storage dsb:temp HexagonArrows.Vector[2] 1000
execute store result storage dsb:temp HexagonArrows.Vector[2] double 0.00005 run scoreboard players operation *var1 variables *= *var2 variables

data modify entity @s Motion set from storage dsb:temp HexagonArrows.Vector

data remove storage dsb:temp HexagonArrows
