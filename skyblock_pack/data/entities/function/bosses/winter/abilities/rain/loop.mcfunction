summon minecraft:marker ~ ~ ~ {Tags:["WinterQueenRainMarker"]}

scoreboard players remove *count_point WinterQueenRain 1

execute if score *count_point WinterQueenRain matches 1.. run function entities:bosses/winter/abilities/rain/loop