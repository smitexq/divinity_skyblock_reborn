scoreboard players remove @s WinterQueenRain 1

#Призыв и распределение
execute store result score *count_point WinterQueenRain run random value 25..40
function entities:bosses/winter/abilities/rain/loop
#распределение
spreadplayers ~ ~ 6 25 false @e[type=minecraft:marker, tag=WinterQueenRainMarker]
execute as @e[type=minecraft:marker, tag=WinterQueenRainMarker] at @s run tp @s ~ 76 ~

scoreboard players set *TimeRainDrop WinterQueenRain 0
function entities:bosses/winter/abilities/rain/drop/start


function dc:get_call {tick:35, command:"function entities:bosses/winter/abilities/rain/drop/on_point", requirePos:true, requireEntity:false}

execute if score @s WinterQueenRain matches 1.. run function dc:get_call {tick:36, command:"function entities:bosses/winter/abilities/rain/summon", requirePos:false, requireEntity:true}