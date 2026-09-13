#Цикл перемещения
execute as @e[type=marker, tag=WinterQueenRainMarker] at @s run tp @s ~ ~-0.5 ~
scoreboard players add *TimeRainDrop WinterQueenRain 1

execute if score *TimeRainDrop WinterQueenRain matches ..31 run function dc:get_call {tick:1, command:"function entities:bosses/winter/abilities/rain/drop/start", requirePos:true, requireEntity:false}